import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final IconData iconpath;
  final String numberOfItems;

  FoodCard({this.categoryName, this.iconpath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Card(
          color: Color(0xff6d61f2),
          elevation: 5.0,
          margin: EdgeInsets.only(
            right: 28.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 14.0, left: 16.0, right: 16.0, bottom: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconpath,
                  size: 25.0,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Row(
          children: [
            Text("$categoryName",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0)),
            SizedBox(
              width: 25.0,
            )
          ],
        ),
      ],
    );
  }
}
