import 'package:flutter/material.dart';

import '../widgets/category_Item.dart';
import 'package:meals_app/dummy_Data.dart';
import '../models/category_Model.dart';

class CategoryScreen extends StatelessWidget {
  final List<Category> values = CategoryData.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 2 / 1,
        ),
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          ...values.map((index) {
            return Card(
              child: CategoryItem(
                title: index.title,
                color: index.color,
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
