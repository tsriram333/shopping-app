import 'package:flutter/material.dart';

class SingleFoodItem extends StatelessWidget {
  static final String routeName = "/SingleFoodItem";

  @override
  Widget build(BuildContext context) {
    final List arguments = ModalRoute.of(context).settings.arguments;
    print(arguments);

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
                    arguments[3],
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black38,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    arguments[0],
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
                          text: "${arguments[2]} Min",
                          icon: Icons.access_time,
                        ),
                        BottomDetails(
                          text: arguments[1],
                          icon: Icons.cake,
                        ),
                        BottomDetails(
                          text: arguments[4],
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
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: 150,
                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Ingredients",
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
                              ...arguments[6]
                                  .map((lal) => Card(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            lal,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ))
                                  .toList()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[100],
                    ),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    height: 150,
                    child: Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Procedure",
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
                              ...arguments[5]
                                  .map((lal) => Card(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            lal,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ))
                                  .toList()
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
