import 'package:flutter/material.dart';

import '../widgets/category_Item.dart';
import 'package:Foods_app/dummy_Data.dart';
import '../models/category_Model.dart';

class CategoryScreen extends StatelessWidget {
  final List<Category> values = CategoryData.data;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("category"),
            bottom: TabBar(tabs: [
              TabName(title: "Items"),
              TabName(title: "Favourites"),
            ]),
          ),
          body: TabBarView(children: [
            CategoryGrid(values: values),
            Text("enna daw"),
          ])),
    );
  }
}

class TabName extends StatelessWidget {
  final String title;
  const TabName({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key key,
    @required this.values,
  }) : super(key: key);

  final List<Category> values;

  @override
  Widget build(BuildContext context) {
    return GridView(
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
    );
  }
}
