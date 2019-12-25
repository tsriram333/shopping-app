import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meals_app/widgets/food_card.dart';
import 'package:meals_app/dummy_Data.dart';

import '../models/food_Model.dart';

import '../dummy_Data.dart';

class FoodItems extends StatelessWidget {
  static const String routeName = "/FoodItems";

  @override
  Widget build(BuildContext context) {
    final String categoryId = ModalRoute.of(context).settings.arguments;
    final catItems = FoodData.data.where((food) {
      return food.category.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("food item"),
      ),
      body: ListView(
        children: <Widget>[
          ...catItems.map((index) {
            return FoodCard(
              title: index.title,
              image: index.image,
              duration: index.duration,
              price: getAffordability(index.affordability),
              complexity: getComplexity(index.complexity),
            );
          }).toList()
        ],
      ),
    );
  }
}
