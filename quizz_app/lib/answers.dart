import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function update;

  final String answer;

//  final int choice;

  Answers(
    this.update,
    this.answer,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
//      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: RaisedButton(
        onPressed: update,
        child: Text(
          answer,
          style: TextStyle(fontSize: 18),
        ),
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        color: Colors.blueAccent,
        textColor: Colors.white,
      ),
    );
  }
}
