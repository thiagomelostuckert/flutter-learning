import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  //String titleInput;
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _selectedDate;

  void _submitData() {
    if (_amountController.text.isEmpty){
      return ; 
    }
    final _enteredTitle = _titleController.text;
    final _enteredAmount = double.parse(_amountController.text);

    if (_enteredTitle.isEmpty || _enteredAmount <= 0 || _selectedDate == null ) {
      return;
    }
    widget.addTransaction(
      _enteredTitle,
      _enteredAmount,
      _selectedDate, 
    );

    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(
        2019,
      ),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() {
          _selectedDate = pickedDate;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Título: "),
              controller: _titleController,
              onSubmitted: (_) => _submitData(),
              //onChanged: (value) {
              //titleInput = value;
              //},
            ),
            TextField(
              decoration: InputDecoration(labelText: "Valor: "),
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _submitData(),
              //onChanged: (value) {
              //amountInput = value;
              //},
            ),
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      _selectedDate == null
                          ? "Data não selecionada!"
                          : "Data escolhida: ${DateFormat.yMEd().format(_selectedDate)}",
                    ),
                  ),
                  FlatButton(
                    textColor: Theme.of(context).primaryColor,
                    onPressed: _presentDatePicker,
                    child: Text(
                      "Escolha uma data",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              onPressed: _submitData,
              //() {
              //print(titleController.text);
              //print(amountController.text);
              //print(amountInput);
              //print(titleInput);
              //},
              child: Text("Add"),
              textColor: Theme.of(context).textTheme.button.color,
              color: Theme.of(context).primaryColorDark,
            )
          ],
        ),
      ),
    );
  }
}
