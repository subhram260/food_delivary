import 'package:flutter/material.dart';

class InRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 52.0,
            leading: Container(
              height: 48.0,
              width: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xf6d61f2),
              ),
              child: new IconButton(
                icon: new Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            backgroundColor: Colors.white,
            title: Text(
              "scroll",
              style: TextStyle(color: Colors.orange),
            ),
            floating: true,
            actions: <Widget>[
              Container(
                height: 48.0,
                width: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xf6d61f2),
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    onPressed: () {}),
              ),
              IconButton(
                  icon: Icon(
                    Icons.save_alt,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ],
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            // The builder function returns a ListTile with a title that
            // displays the index of the current item.
            (context, index) => ListTile(title: Text('Item #$index')),
            // Builds 1000 ListTiles
            childCount: 1000,
          ))
        ],
      ),
    );
  }
}
