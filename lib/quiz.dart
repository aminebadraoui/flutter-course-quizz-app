import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/answer.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final Function answerQuestionCallBack;

  Quiz({this.question, this.answers, this.answerQuestionCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(question),
          ...answers.map((answer) {
            return Answer(
                title: answer["answer"],
                onPressed: () => answerQuestionCallBack(answer["score"]));
          }).toList()
        ],
      ),
    );
  }
}
