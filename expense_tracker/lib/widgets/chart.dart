import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Card(
          margin: EdgeInsets.all(15),
          elevation: 30,
          child: Center(
            child: Text("card 1",
                style: GoogleFonts.aBeeZee(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    textStyle: TextStyle(color: Colors.blueGrey[600]))),
          )),
    );
  }
}
