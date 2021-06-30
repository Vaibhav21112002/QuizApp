import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resultShow;
  Result(this.score, this.resultShow);

  String get resultphrase {
    String textresult;
    if (score <= 8) {
      textresult = "You are awesome and innocent";
    } else if (score <= 12) {
      textresult = "Likeable";
    } else if (score <= 16) {
      textresult = "Strage";
    } else {
      textresult = "bad";
    }
    return textresult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultphrase,
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          FlatButton(
              child: Text("Reset The Quiz"),
              textColor: Colors.indigo[900],
              onPressed: resultShow),
        ],
      ),
    );
  }
}
