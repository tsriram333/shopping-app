import 'package:flutter/material.dart';

class ChartBars extends StatelessWidget {
  final double amount;
  final String day;
  final double total;

  ChartBars(this.amount, this.day, this.total);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(child: FittedBox(child: Text("₹ $amount"))),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 80,
          width: 12,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              FractionallySizedBox(
                heightFactor: total == 0 ? 0.0 : amount / total,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("$day")
      ],
    );
  }
}
