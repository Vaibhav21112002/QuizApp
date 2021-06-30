import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  static const questions = [
    {
      'questionText': 'What is your favourite color?',
      'answer': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favourite Food?',
      'answer': [
        {'text': 'Pav Bhaji', 'score': 1},
        {'text': 'Noodles', 'score': 3},
        {'text': 'Shakes', 'score': 1},
        {'text': 'Chocolates', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favourite Singer?',
      'answer': [
        {'text': 'Vaibhav Gupta', 'score': 0},
        {'text': 'Arijit Singh', 'score': 1},
        {'text': 'Atif Aslam', 'score': 2},
        {'text': 'Shankar Mahadevan', 'score': -1}
      ],
    },
  ];
  var totalscore = 0;

  void resetQuiz() {
    setState(() {
      totalscore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    // var abool = true;
    totalscore += score;
    if (questionIndex < questions.length) {
      print("Hvae more queesiton");
    } else {
      print("No More questions");
    }
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: questionIndex < questions.length
            ? Center(
                child: Quiz(
                    questions: questions,
                    answerQuestion: answerQuestion,
                    questionIndex: questionIndex),
              )
            : Center(
                child: Result(totalscore, resetQuiz),
              ),
      ),
    );
  }
}
