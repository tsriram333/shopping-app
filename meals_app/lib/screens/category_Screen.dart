import 'package:flutter/material.dart';

import '../widgets/category_Item.dart';
import 'package:meals_app/dummy_Data.dart';
import '../models/category_Model.dart';

class CategoryScreen extends StatelessWidget {
  final List<Category> values = CategoryData.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 2 / 1.5,
        ),
        padding: const EdgeInsets.all(15),
        children: <Widget>[
          ...values.map((index) {
            return CategoryItem(
              title: index.title,
              color: index.color,
              category: index.id,
            );
          }).toList()
        ],
      ),
    );
  }
}
