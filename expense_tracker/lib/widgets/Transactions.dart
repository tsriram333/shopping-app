import 'package:flutter/material.dart';

import 'txcard.dart';
import 'userinput.dart';

import '../resources/transaction.dart';

class TransactionsList extends StatefulWidget {
  @override
  _TransactionsListState createState() => _TransactionsListState();
}

class _TransactionsListState extends State<TransactionsList> {
  final List<Transaction> tx = [
    Transaction(id: "T1", amount: 45.60, title: "Laptop", date: DateTime.now()),
    Transaction(id: "T2", amount: 95, title: "Shoes", date: DateTime.now()),
  ];

  void submit(double amount, String title) {
    setState(() {
      tx.add(Transaction(amount: amount, title: title, date: DateTime.now()));
    });
  }

  void reset() {
    setState(() {
      tx.removeLast();
    });
  }

  List<String> hello = ["lol", "Raja"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserInput(submit, reset),
        Container(
          height: 200,
          child: ListView(
            children: <Widget>[
              ...tx.map((index) {
                return TransactionCard(
                  title: index.title,
                  amount: index.amount,
                  date: index.date,
                );
              }).toList()
            ],
          ),
        ),
      ],
    );
  }
}
