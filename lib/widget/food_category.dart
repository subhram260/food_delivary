import 'package:flutter/material.dart';
import 'package:food_delivary/model/category_model.dart';
// import 'package:foodify/src/model/category_model.dart';

import '../data/category_data.dart';
import 'food_card.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            iconpath: _categories[index].iconpath,
            //numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
