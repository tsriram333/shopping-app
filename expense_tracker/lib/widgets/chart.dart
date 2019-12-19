import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'chart_Bars.dart';
import 'package:expense_tracker/resources/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get groupTransaction {
    return List.generate(7, (ind) {
      final weekday = DateTime.now().subtract(Duration(days: ind));
      double totalsum = 0.0;

      for (int i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date.day == weekday.day &&
            recentTransactions[i].date.year == weekday.year &&
            recentTransactions[i].date.month == weekday.month) {
          totalsum += recentTransactions[i].amount;
        }
      }
      return {
        "amount": totalsum,
        "day": DateFormat.E().format(weekday).substring(0, 2)
      };
    }).reversed.toList();
  }

  double get totalValue {
    return groupTransaction.fold(0.0, (sum, item) {
      return sum + item["amount"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(15),
          elevation: 10,
          child: Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ...groupTransaction.map((ctx) {
                  return Expanded(
                      child: ChartBars(ctx["amount"], ctx["day"], totalValue));
                }).toList()
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "List of transactions",
                style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle()),
                textAlign: TextAlign.left,
              ),
              Text(
                "Week Total: $totalValue",
                style: Theme.of(context).textTheme.body2.copyWith(fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
