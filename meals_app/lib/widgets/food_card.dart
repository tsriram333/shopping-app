import 'package:flutter/material.dart';
import 'package:meals_app/screens/single_Food_Item.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String price;
  final String complexity;
  final double duration;
  final String image;

  FoodCard({
    this.title,
    this.complexity,
    this.duration,
    this.image,
    this.price,
  });

  void foodTap(BuildContext context) {
    Navigator.pushNamed(context, SingleFoodItem.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 25),
              height: 300,
//              color: Colors.teal,
              child: InkWell(
                onTap: () => foodTap(context),
                radius: 50,
                splashColor: Colors.red,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: <Widget>[
                    Container(
                      width: 350,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25)),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
//                    width: 350,
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  BottomDetails(
                    text: "$duration Min",
                    icon: Icons.access_time,
                  ),
                  BottomDetails(
                    text: complexity,
                    icon: Icons.cake,
                  ),
                  BottomDetails(
                    text: price,
                    icon: Icons.attach_money,
                  ),
                ],
              ),
            )
          ],
        ),
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
