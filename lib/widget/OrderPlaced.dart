import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivary/screens/main_screen.dart';
import '../body.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Spacer(),
          Container(
            width: 315,
            height: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Spacer(),
                    SvgPicture.asset(
                      "assets/images/order.svg",
                      color: Colors.black,
                    ),
                    // Icon(
                    //   Icons.emoji_emotions_outlined,
                    //   size: 130,
                    // ),
                    Spacer(),
                    Text(
                      "Thanks for Buying \nFood with Us!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.green[800]),
                    ),
                    Spacer(),
                    Spacer(),
                    Spacer(),
                    DefaultButton(text: "Track your order", press: () {})
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: DefaultButton(
                text: "Close",
                press: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => MainScreen()),
                      (route) => true);
                }),
          )
        ],
      ),
    );
  }
}
