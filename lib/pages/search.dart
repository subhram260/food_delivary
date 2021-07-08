import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 5.0, vertical: 74.0),
            child: Material(
              // elevation: 8.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffdE3E3F0),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        // fillColor: Color(0xffd1500FF),
                        // filled: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                        hintText:
                            "Search any food , restaurants , cuisines , hotel",
                        prefixIcon: Material(
                          elevation: 0.0,
                          color: Color(0xffdE3E3F0),
                          borderRadius: BorderRadius.circular(30.0),
                          child: Icon(Icons.search),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
