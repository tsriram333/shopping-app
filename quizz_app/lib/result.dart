import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);

  String get result {
    String madda;
    if (score < 6)
      madda = "manchi madda ";
    else if (score < 35)
      madda = "OK madda ";
    else
      madda = "boku madda ";

    return madda;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Your score is',
          style: TextStyle(color: Colors.teal, fontSize: 28),
        ),
        Container(
          height: 25,
        ),
        Text(
          score.toString(),
          style: TextStyle(color: Colors.teal, fontSize: 40),
        ),
        Container(
          height: 50,
        ),
        Text(
          result,
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        RaisedButton(
          onPressed: reset,
          child: Text("Reset"),
        )
      ],
    );
  }
}
