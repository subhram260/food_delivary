import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Commonpage extends StatefulWidget {
  @override
  _CommonpageState createState() => _CommonpageState();
}

class _CommonpageState extends State<Commonpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Ionicons.pizza_outline,
        size: 100.0,
      ),
    );
  }
}
