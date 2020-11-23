import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final Function onPressed;

  Answer({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(title),
        onPressed: this.onPressed,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
