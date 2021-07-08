import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary/widget/OrderPlaced.dart';
import 'package:food_delivary/widget/home_top_info.dart';
import '../body.dart';

class CartPage extends StatefulWidget {
  final String image;
  final String dishname;
  final double price;
  final double totalitems;
  final double totalprice;
  CartPage(
      {this.dishname,
      this.price,
      this.totalitems,
      this.image,
      this.totalprice});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var homelocation = HomeTopInfo();
  final textstyle = TextStyle(color: Color(0xff6e80b0), fontSize: 14.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: <Widget>[
            Spacer(),
            Container(
              height: 96.0,
              width: 343.0,
              padding: EdgeInsets.only(top: 24.0, left: 32.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xff6d61f2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Deliver To",
                    style: TextStyle(fontSize: 14.0, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 96.0,
              width: 343.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Image.asset(
                          "assets/images/biriyani.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Chicken Biriyani",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "₹ ${widget.price}",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Spacer(),
            Spacer(),
            Spacer(),
            Spacer(),
            Material(
              elevation: 0.0,
              color: Color(0xa6e80b0),
              borderRadius: BorderRadius.circular(10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    hintText: "Promo Code",
                    suffixIcon: Material(
                      elevation: 0.0,
                      color: Color(0xa6e80b0),
                      child: Icon(
                        EvaIcons.plus,
                      ),
                    ),
                    border: InputBorder.none),
              ),
            ),
            Divider(
              indent: null,
              thickness: 0.0,
              color: Colors.black,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Item Total", style: textstyle),
                    Text(
                      "₹ ${widget.totalprice}",
                      style: textstyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Discount", style: textstyle),
                    Text(
                      "₹ 0.0",
                      style: textstyle,
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "₹ ${widget.totalprice}",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              height: 55.0,
              width: 340.0,
              child: DefaultButton(
                  text: "Confirm Order",
                  press: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => OrderPlaced()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
