import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/chart.dart';
import 'widgets/Transactions.dart';

void main() => runApp(Expense());

class Expense extends StatefulWidget {
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Center(
            child: Text(
              "Expense Manager",
              style: GoogleFonts.aBeeZee(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
        ),
        body: Column(children: <Widget>[
          Chart(),
          TransactionsList(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.purple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
