import 'package:flutter/material.dart';
import 'package:food_delivary/screen/SignIn.dart';
import 'package:food_delivary/utils/NewCard.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFD7B70FA),
        shadowColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFD7B70FA),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(125),
                    // bottomRight: Radius.circular(0)
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //     border: Border.all(), borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subhram Patel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("subhram336@gmail.com",
                                style: TextStyle(
                                    color: Color(0xFFDE7E7E7), fontSize: 15)),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  NewCard(
                    text: "Wishlist",
                    icon: Icons.favorite_border,
                    width: 10,
                    height: 10,
                  ),
                  Spacer(),
                  NewCard(
                    text: "My Order",
                    icon: Icons.wallet_giftcard,
                    width: 10,
                    height: 10,
                  ),
                  Spacer(),
                  NewCard(
                    text: "Payment Method",
                    icon: Icons.payment,
                    width: 10,
                    height: 10,
                  ),
                  Spacer(),
                  NewCard(
                    text: "Setting",
                    icon: Icons.settings_outlined,
                    width: 10,
                    height: 10,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => SignIn()),
                          (route) => false);
                    },
                    child: NewCard(
                      text: "LogOut",
                      icon: Icons.logout,
                      width: 10,
                      height: 10,
                    ),
                  ),
                  Spacer(),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
