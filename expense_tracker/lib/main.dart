import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/chart.dart';
import 'widgets/txcard.dart';
import 'resources/transaction.dart';
import 'widgets/userinput.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple,
            textTheme: TextTheme(
              title: GoogleFonts.raleway(fontWeight: FontWeight.w500),
              body1: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle(color: Colors.purple)),
              body2: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                  textStyle: TextStyle(color: Colors.grey[400])),
              button: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle(color: Colors.white)),
              caption: GoogleFonts.raleway(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  textStyle: TextStyle(
                    color: Colors.purple,
                  )),
            )),
        home: Expense());
  }
}

class Expense extends StatefulWidget {
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  void showDialog(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        backgroundColor: Theme.of(context).bottomSheetTheme.backgroundColor,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: UserInput(submit),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

// Modify class properties and values
  final List<Transaction> tx = [];

  void submit(double amount, String title, DateTime date) {
    setState(() {
      tx.add(Transaction(
        amount: amount,
        title: title,
        date: date,
        id: DateTime.now().toString(),
      ));
    });
  }

  void reset(String val) {
    setState(() {
      tx.removeWhere((item) => item.id == val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Expense Manager",
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showDialog(context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Chart(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 15, 0, 15),
            child: Text(
              "List of transactions",
              style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle()),
              textAlign: TextAlign.left,
            ),
          ),
          tx.isEmpty
              ? Container(
                  child: Image.asset("zzz.png"),
                )
              : Container(
                  height: 530,
                  child: ListView(
                    children: <Widget>[
                      ...tx.map((index) {
                        return TransactionCard(
                          title: index.title,
                          amount: index.amount,
                          date: index.date,
                          reset: reset,
                          id: index.id,
                        );
                      }).toList()
                    ],
                  ),
                ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
