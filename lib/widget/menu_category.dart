import 'package:flutter/material.dart';
import 'package:food_delivary/data/menu_data.dart';
import 'menu.dart';

class MenuType extends StatefulWidget {
  @override
  _MenuTypeState createState() => _MenuTypeState();
}

class _MenuTypeState extends State<MenuType> {
  final List _menus = menus;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _menus.length,
          itemBuilder: (BuildContext context, int index) {
            return Menus(
              menus: _menus[index].menus,
              // categoryName: _categories[index].categoryName,
            );
          }),
    );
  }
}
