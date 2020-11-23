import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _question,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      width: double.infinity,
    );
  }
}
