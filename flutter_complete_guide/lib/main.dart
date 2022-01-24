import 'package:flutter/material.dart';

/* 
void main(){
 runApp(myApp());
}
 */
void main() => runApp(myApp());

class myApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = {
      'Se você tivesse oportunidade iria para qual desses países?',
      'Quais idiomas você já fala?',
      'Quais países você já visitou de férias?'
    };

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              //title: Text('Love & Data & Science'),
              title: Text(
                  'Muitos brasileiros estão \n imigrando e isso gerou nossa \n curiosidade sobre as seguintes questões:'),
            ),
            body:
                //Text('Love moves the world, but what we know about it?'),
                Column(
              children: [
                Text(questions.elementAt(0)),
                RaisedButton(
                  child: Text('Estados Unidos'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Canadá'),
                  onPressed: () => {print('Canadá foi escolhido')},
                ),
                RaisedButton(
                  child: Text('Australia'),
                  onPressed: () { print("Australia foi escolhida");},
                ),
                RaisedButton(
                  child: Text('Irlanda'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Portugal'),
                  onPressed: answerQuestion,
                ),
              ],
            )));
  }
}
