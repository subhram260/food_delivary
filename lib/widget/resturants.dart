import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'in_restaurant.dart';
// import 'package:food_delivary/widget/in_restaurant.dart';
// import 'package:foodify/src/widget/in_restaurant.dart';

class Restaurants extends StatefulWidget {
  final String name;
  final String images;
  final String category;
  final double rating;

  Restaurants({
    this.name,
    this.images,
    this.category,
    this.rating,
  });

  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 64.0,
                    width: 64.0,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: NetworkImage(widget.images),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        height: 24.0,
                        width: 150.0,
                        child: Text(widget.name,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.yellow[900],
                          ),
                          Text(widget.rating.toString(),
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("~ pizza ~",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38, //6e80b0
                              )),
                          SizedBox(width: 5.0),
                          Icon(
                            EvaIcons.clockOutline,
                            color: Colors.black,
                            size: 15.0,
                          ),
                          Text(widget.category,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    "20% Off",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => InRestaurants(
                        name: widget.name,
                        images: widget.images,
                        totalTime: widget.category,
                        rating: widget.rating,
                      )),
            );
          },
          style: ElevatedButton.styleFrom(
              //onPrimary: Color(0xfe5e5e5),
              primary: Color(0xffffffff),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0)),
        ),
      ],
    );
  }
}
