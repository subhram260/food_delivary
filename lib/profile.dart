import 'package:flutter/material.dart';
import 'package:food_delivary/utils/NewCard.dart';
import 'package:food_delivary/screen/SignIn.dart';
// // import 'package:food_delivary/controllers/authentication.dart';
// import 'package:food_delivary/home.dart';

class Profile extends StatelessWidget {
  // const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text(
        //   "Profile",
        //   style: TextStyle(color: Colors.black),
        //   textAlign: TextAlign.center,
        // ),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {},
        // ),
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
                          // child: Image.asset(
                          //   "assets/images/facebook.png",
                          //   width: 60,
                          // ),
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
                  // Spacer(),
                  // NewCard(
                  //   text: "About",
                  // ),
                  NewCard(
                    text: "Wishlist",
                    icon: Icons.favorite_border,
                  ),
                  Spacer(),
                  NewCard(
                    text: "My Order",
                    icon: Icons.wallet_giftcard,
                  ),
                  Spacer(),
                  NewCard(
                    text: "Payment Method",
                    icon: Icons.payment,
                  ),
                  Spacer(),
                  NewCard(
                    text: "Setting",
                    icon: Icons.settings_outlined,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: ()
                        // => signOutUser().whenComplete(() =>
                        {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => SignIn()),
                          (route) => false);
                    },
                    child: NewCard(
                      text: "LogOut",
                      icon: Icons.logout,
                    ),
                  ),
                  Spacer(),
                  Spacer(),
                  // Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
