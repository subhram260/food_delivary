import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary/pages/home_page.dart';
import 'package:food_delivary/screens/main_screen.dart';
// import 'package:food_delivary/pages/home_page.dart';

import 'menu_category.dart';
import 'menu_item.dart';
// import 'package:food_delivary/widget/menu_category.dart';
// import 'package:food_delivary/widget/menu_item.dart';

// import 'package:foodify/src/widget/menu_item.dart';

// import 'package:foodify/src/widget/menu_category.dart';

class InRestaurants extends StatelessWidget {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  const InRestaurants({this.name, this.images, this.rating, this.totalTime});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MainScreen()));
        Navigator.of(context).pop();
      },

      // Navigator.of(context).pushReplacement(
      //     MaterialPageRoute(builder: (context) => MainScreen())),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 52.0,
              leading: new IconButton(
                icon: new Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainScreen())),
                //   MaterialPageRoute(builder: (context)=>HomePage()),
                // (route) => false
              ),
              // ),
              backgroundColor: Colors.white,
              title: Text(
                "Restaurants",
                style: TextStyle(color: Colors.orange),
              ),
              floating: true,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      EvaIcons.heartOutline,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.save_alt_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: NetworkImage(images),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 192.0,
                      width: 400.0,
                      clipBehavior: Clip.hardEdge,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 36.0,
                          width: 160.0,
                          child: Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 26.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "More info",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xfff1bd23),
                          size: 20.0,
                        ),
                        Text(
                          " $rating (221)  •  $totalTime •  Fastfood",
                          style: TextStyle(fontSize: 16.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ])),
            SliverAppBar(
              //excludeHeaderSemantics: false,
              expandedHeight: 20.0,
              backgroundColor: Colors.white,
              //centerTitle: false,
              //centerTitle: true,
              leadingWidth: 0.0,
              title: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Menu",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
              ),
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("menu"),
                centerTitle: true,
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      EvaIcons.options2Outline,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    onPressed: () {}),
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([MenuType(), MenuAdd()])),
          ],
        ),
      ),
    );
  }
}

// class ( {
// }
