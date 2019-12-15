import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';
import 'contsants.dart';

void main() => runApp(_QuizApp());

class _QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizAppState();
  }
}

class _QuizAppState extends State<_QuizApp> {
  var questions = Constants.questions;

  int _qindex = Constants.index;

  bool check = true;

  int total = 0;

  void reset() {
    setState(() {
      _qindex = 0;
      total = 0;
      check = true;
    });
  }

  void _updatequestion(int score) {
    setState(() {
      if (_qindex < questions.length - 1) {
        _qindex++;
        total += score;
      } else {
        total += score;
        check = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.teal,
          elevation: 24.2,
          centerTitle: true,
          toolbarOpacity: 0.9,
        ),
        body: Center(
            child: check
                ? Quiz(_qindex, questions, _updatequestion)
                : Result(total, reset)),
      ),
    );
  }
}
