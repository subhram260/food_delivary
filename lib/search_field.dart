import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      borderRadius: BorderRadius.circular(10.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            hintText: "Search any food , restaurants , cuisines , hotel",
            prefixIcon: Material(
              elevation: 0.0,
              borderRadius: BorderRadius.circular(30.0),
              child: Icon(Icons.search),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
