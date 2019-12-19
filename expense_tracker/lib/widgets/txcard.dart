import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:expense_tracker/main.dart';

class TransactionCard extends StatelessWidget {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Function reset;

  TransactionCard({this.date, this.title, this.id, this.amount, this.reset});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(8),
            decoration: ShapeDecoration(
                shape: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                    style: BorderStyle.solid)),
            child: Text(
              "₹ ${amount.toStringAsFixed(0)}",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.body1.copyWith(fontSize: 25),
            ),
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.caption,
          ),
          subtitle: Text(
            DateFormat.yMMMd().format(date),
            style: Theme.of(context).textTheme.body2,
          ),
          trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                reset(id);
              }),
        ),
      ),
    );
  }
}
