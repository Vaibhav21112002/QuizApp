import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function SelectHandler;
  final String answerText;
  Answer(this.SelectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.indigo[900],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: SelectHandler,
      ),
    );
  }
}


