import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/quiz.dart';

import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      "question": "what's your favourite city?",
      "answers": [
        {
          "answer": "Blue",
          "score": 10,
        },
        {
          "answer": "Red",
          "score": 20,
        },
        {
          "answer": "Black",
          "score": 30,
        }
      ],
    },
    {
      "question": "what's your favourite city?",
      "answers": [
        {
          "answer": "Ottawa",
          "score": 10,
        },
        {
          "answer": "Toronto",
          "score": 20,
        },
        {
          "answer": "Montreal",
          "score": 30,
        }
      ],
    },
    {
      "question": "what's your favourite animal?",
      "answers": [
        {
          "answer": "Cat",
          "score": 10,
        },
        {
          "answer": "Dog",
          "score": 20,
        },
        {
          "answer": "Snake",
          "score": 30,
        }
      ],
    }
  ];

  var _currentQuestionIndex = 0;

  var _totalScore = 0;

  void incrementCurrentQuestionIndex() {
    _currentQuestionIndex += 1;
  }

  void _answerQuestion(int score) {
    print("Button Pressed!");

    setState(() {
      incrementCurrentQuestionIndex();
      _totalScore += score;
    });

    print(_currentQuestionIndex);
  }

  void _didPressRestart() {
    setState(() {
      _currentQuestionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quizz App")),
        body: _currentQuestionIndex < _questions.length
            ? Quiz(
                question: _questions[_currentQuestionIndex]["question"],
                answers: _questions[_currentQuestionIndex]["answers"],
                answerQuestionCallBack: _answerQuestion,
              )
            : Center(
                child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          "Congrats! You reached the end of the quiz with a score of $_totalScore",
                          textAlign: TextAlign.center,
                        ),
                        RaisedButton(
                            child: Text("Restart"), onPressed: _didPressRestart)
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))),
      ),
    );
  }
}
