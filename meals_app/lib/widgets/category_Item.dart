import 'package:flutter/material.dart';

import '../screens/food_Items_Screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String category;

  CategoryItem({this.title, this.color, this.category});

  void categoryTap(BuildContext context) {
    Navigator.pushNamed(context, FoodItems.routeName, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.purple,
      radius: 25,
      onTap: () => categoryTap(context),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.5), color.withOpacity(0.9)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
