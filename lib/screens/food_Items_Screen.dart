import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals_app/widgets/food_card.dart';
import 'package:meals_app/dummy_Data.dart';

import '../dummy_Data.dart';

class FoodItems extends StatelessWidget {
  static const String routeName = "/FoodItems";

  static final catItems = FoodData.data.where((food) {
    return food.category.contains("c1");
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("food item"),
      ),
      body: ListView(
        children: <Widget>[
          ...catItems.map((index) {
            return FoodCard(
              title: index.title,
            );
          }).toList()
        ],
      ),
    );
  }
}
