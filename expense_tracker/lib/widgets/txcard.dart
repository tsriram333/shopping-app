import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  TransactionCard({this.date, this.title, this.id, this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              padding: EdgeInsets.all(8),
              decoration: ShapeDecoration(
                  shape: Border.all(
                      color: Colors.blueGrey,
                      width: 3,
                      style: BorderStyle.solid)),
              child: Text(
                "₹ ${amount.toStringAsFixed(2)}",
                style: GoogleFonts.aBeeZee(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle(color: Colors.purple)),
                ),
                Text(DateFormat.yMMMd().format(date))
              ],
            )
          ],
        ),
      ),
    );
  }
}
