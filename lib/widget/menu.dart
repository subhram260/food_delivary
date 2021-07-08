import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
  final String menus;

  Menus({this.menus});
}

class _MenusState extends State<Menus> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            widget.menus,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
