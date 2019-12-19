import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class UserInput extends StatefulWidget {
  final Function update;

  UserInput(this.update);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  void showDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() {
          datePicker = pickedDate;
        });
      }
    });
  }

  final itemcontroller = TextEditingController();

  final amountcontroller = TextEditingController();

  DateTime datePicker;
  bool check = false;
  void submit(String text, double amount, DateTime date) {
    if (text.isEmpty || amount <= 0 || date == null) return;
    widget.update(amount, text, datePicker);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              controller: itemcontroller,
              decoration: InputDecoration(
                labelText: "Item name",
//              focusColor: Colors.teal,
              ),
              keyboardType: TextInputType.text,
              onSubmitted: (_) => submit(itemcontroller.text,
                  double.parse(amountcontroller.text), datePicker),
            ),
            TextField(
              textAlign: TextAlign.center,
              controller: amountcontroller,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.number,
              onSubmitted: (_) {
                submit(itemcontroller.text, double.parse(amountcontroller.text),
                    datePicker);
//              Navigator.pop(context);
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        datePicker == null
                            ? "No Choosen Date"
                            : DateFormat.yMMMEd().format(datePicker),
                        style: Theme.of(context).textTheme.body2,
                      ),
                    ),
                    FlatButton(
                      onPressed: showDate,
                      child: Container(
                        child: Text(
                          "Choose date",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                              textStyle: TextStyle(
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    onPressed: () {
                      submit(itemcontroller.text,
                          double.parse(amountcontroller.text), datePicker);
                      Navigator.pop(context);
                    },
                    elevation: 5,
                    color: Theme.of(context).primaryColor,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Submit",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
