import 'package:flutter/material.dart';
import 'package:meals_app/screens/single_Food_Item.dart';

import 'screens/category_Screen.dart';
import 'screens/food_Items_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/": (ctx) => CategoryScreen(),
        FoodItems.routeName: (ctx) => FoodItems(),
        SingleFoodItem.routeName: (ctx) => SingleFoodItem(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
