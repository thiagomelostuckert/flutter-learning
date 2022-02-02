import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz; 
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "Fim das perguntas\n";
    if (resultScore <= 5) {
      resultText+= "Você pontuou menos do que 6";
    } else {
      resultText+= "Você pontuou mais do que 6";
    }
    return resultText; 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(onPressed: resetQuiz , child: Text("Reinicia o questionário"), textColor: Colors.blue,)
        ]

      ),
      
    );
  }
}
