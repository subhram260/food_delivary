import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary/pages/cart.dart';

class BuildAdd extends StatefulWidget {
  @override
  _BuildAddState createState() => _BuildAddState();
}

class _BuildAddState extends State<BuildAdd> {
  final textstyle = TextStyle(color: Colors.white, fontSize: 20.0);
  bool _adder = true;

  int increaseItem = 1;

  var counter = 0;

  Widget _cartPop() {
    Scaffold.of(context).showBottomSheet((BuildContext context) {
      return Container(
        height: 90.0,
        width: double.infinity,
        color: Color(0xff6d61f2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 30.0),
                Text(
                  increaseItem.toString(),
                  style: textstyle,
                ),
                SizedBox(width: 10.0),
                Text(
                  "items",
                  style: TextStyle(fontSize: 15.0, color: Colors.white70),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CartPage(
                            price: 20.0,
                            totalitems: increaseItem.toDouble(),
                            totalprice: (increaseItem * 20).toDouble(),
                            dishname: '',
                            image: '',
                          )),
                );
              },
              child: Text(
                "View Cart",
                style: textstyle,
              ),
            ),
            Container(
              height: 40,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xf6d61f2),
              ),
              child: Text(
                "${(increaseItem * 20).toString()}",
                style: textstyle,
              ),
            )
          ],
        ),
      );
    });
    return null;
  }

  int _increaseItem() {
    setState(() {
      increaseItem++;
    });
    return increaseItem;
  }

  int _decreaseItem() {
    setState(() {
      increaseItem--;
    });
    return increaseItem;
  }

  void _handleadd() {
    setState(() {
      _adder = !_adder;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.0),
      height: 32.0,
      width: 88.0,
      alignment: Alignment(0, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: _adder ? Colors.blue[50] : Color(0xff6d61f2)),
      child: _adder
          ? GestureDetector(
              child: (Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Add",
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Icon(
                    EvaIcons.plus,
                    color: Colors.blue,
                  )
                ],
              )),
              onTap: () {
                _handleadd();

                _cartPop();
              })
          : ((increaseItem >= 1)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        _decreaseItem();
                        _cartPop();
                      },
                      child: Icon(
                        EvaIcons.minus,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      increaseItem.toString(),
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        _increaseItem();
                        _cartPop();
                      },
                      child: Icon(
                        EvaIcons.plus,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              : BuildAdd()),
    );
  }
}
