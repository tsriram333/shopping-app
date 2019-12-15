import 'package:flutter/material.dart';

import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final int index;
  final List<Map<String, Object>> questions;
  final Function update;

  Quiz(this.index, this.questions, this.update);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(questions[index]["questions"]),
        ...(questions[index]["answers"] as List<Map<String, Object>>)
            .map((sample) {
          return Answers(() {
            update(sample["score"]);
          }, sample["text"]);
        }).toList()
      ],
    );
  }
}
