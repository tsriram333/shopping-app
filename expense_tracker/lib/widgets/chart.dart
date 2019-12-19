import 'package:flutter/material.dart';
import 'chart_Bars.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List sample = [
    1,
    2,
    1,
    3,
    1,
    3,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: Container(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ...sample.map((ctx) {
              return ChartBars();
            }).toList()
          ],
        ),
      ),
    );
  }
}
