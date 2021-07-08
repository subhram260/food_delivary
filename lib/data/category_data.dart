import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../model/category_model.dart';

final categories = [
  Category(
    iconpath: IoniconsData(0xeaea),
    categoryName: "All",
    colorbg: '',
  ),
  Category(
    iconpath: IoniconsData(0xecbb),
    categoryName: "pizza",
    colorbg: '',
  ),
  Category(
    iconpath: IoniconsData(0xee2f),
    categoryName: "drink",
    colorbg: '',
  ),
  Category(
    iconpath: Icons.emoji_food_beverage_outlined,
    categoryName: "Beverages",
    colorbg: '',
  ),
  Category(
    iconpath: Icons.food_bank_outlined,
    categoryName: "Asian",
    colorbg: '',
  ),
];
