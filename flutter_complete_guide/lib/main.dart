import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      "questionText":
          'Se você tivesse oportunidade iria para qual desses países?',
      "answers": [
        {"text": "Estados Unidos", "score": 5},
        {"text": "Canadá", "score": 4},
        {"text": "Australia", "score": 3},
        {"text": "Irlanda", "score": 2},
        {"text": "Portugal", "score": 1},
      ],
    },
    {
      "questionText": 'Quais idiomas você já fala?',
      "answers": [
        {"text": "Inglês", "score": 5},
        {"text": "Francês", "score": 4},
        {"text": "Espanhol", "score": 3},
        {"text": "Italiano", "score": 2},
        {"text": "Alemão", "score": 1},
      ],
    },
    {
      "questionText": 'Quais países você já visitou de férias?',
      "answers": [
        {"text": "Estados Unidos", "score": 5},
        {"text": "Canadá", "score": 4},
        {"text": "Australia", "score": 3},
        {"text": "Irlanda", "score": 2},
        {"text": "Portugal", "score": 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      this._questionIndex += 1;
    });

    if (_questionIndex < _questions.length) {
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
