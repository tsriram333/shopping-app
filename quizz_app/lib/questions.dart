import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String qeustion;

  Questions(this.qeustion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        qeustion,
        style: TextStyle(
          fontSize: 26,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
