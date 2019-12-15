import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:expense_tracker/resources/transaction.dart';

class UserInput extends StatelessWidget {
  final itemcontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  final Function update;
  final Function reset;
  UserInput(this.update, this.reset);

  void submit(String text, double amount) {
    if (text.isEmpty || amount <= 0) return;
    update(amount, text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            textAlign: TextAlign.center,
            controller: itemcontroller,
            decoration: InputDecoration(
              labelText: "Item name",
              focusColor: Colors.teal,
            ),
            keyboardType: TextInputType.text,
            onSubmitted: (_) => submit(
                itemcontroller.text, double.parse(amountcontroller.text)),
          ),
          TextField(
            textAlign: TextAlign.center,
            controller: amountcontroller,
            decoration: InputDecoration(
              labelText: "Amount",
            ),
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submit(
                itemcontroller.text, double.parse(amountcontroller.text)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: () {
                    submit(itemcontroller.text,
                        double.parse(amountcontroller.text));
                  },
                  padding: EdgeInsets.all(5),
                  child: Text("Submit"),
                ),
              ),
              Container(
                width: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: () {
                    reset();
                  },
                  padding: EdgeInsets.all(5),
                  child: Text("Reset"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
