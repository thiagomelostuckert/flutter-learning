import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

/* 
void main(){
 runApp(myApp());
}
 */
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText":
          'Se você tivesse oportunidade iria para qual desses países?',
      "answers": [
        "Estados Unidos",
        "Canadá",
        "Australia",
        "Irlanda",
        "Portugal"
      ],
    },
    {
      "questionText": 'Quais idiomas você já fala?',
      "answers": ["Inglês", "Francês", "Espanhol", "Italiano", "Alemão"],
    },
    {
      "questionText": 'Quais países você já visitou de férias?',
      "answers": [
        "Estados Unidos",
        "Canadá",
        "Australia",
        "Irlanda",
        "Portugal"
      ],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      this._questionIndex += 1;
    });

    if (_questionIndex < questions.length) {
      print(this._questionIndex);
    } else {
      print("Última pergunta");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experience abroad'),
        ),
        body: _questionIndex < questions.length
            ?
            //Text('Love moves the world, but what we know about it?'),
            Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((answerText) {
                    return Answer(_answerQuestion, answerText);
                  }).toList()
                ],
              )
            : Center(
                child: Text("Fim das perguntas"),
              ),
      ),
    );
  }
}
