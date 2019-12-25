import 'package:flutter/material.dart';

class SingleFoodItem extends StatelessWidget {
  static final String routeName = "/SingleFoodItem";

  List dummy = [
    "Step1",
    "Step1",
    "Step1",
    "Step1",
    "Step1",
    "Step1",
    "Step1",
    "Step1",
    "Step1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    "https://www.dinneratthezoo.com/wp-content/uploads/2018/10/roasted-chicken-4.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black38,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "chicken",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: double.infinity,
//                  color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        BottomDetails(
                          text: " Min",
                          icon: Icons.access_time,
                        ),
                        BottomDetails(
                          text: "hard",
                          icon: Icons.cake,
                        ),
                        BottomDetails(
                          text: "costly",
                          icon: Icons.attach_money,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Ingredients",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView(
                            children: <Widget>[
                              ...dummy.map((lal) => Text(lal)).toList()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Ingredients",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView(
                            children: <Widget>[
                              ...dummy.map((lal) => Text(lal)).toList()
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomDetails extends StatelessWidget {
  const BottomDetails({
    Key key,
    @required this.text,
    @required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 30,
          color: Colors.deepPurple,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
