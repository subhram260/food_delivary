import 'package:flutter/material.dart';
import 'package:food_delivary/body.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Forms(),
            )
          ],
        ),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Sign up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Text(
            "Create account",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          // Spacer(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFDDADBF5),
                ),
                child: Image.asset(
                  "assets/images/google.png",
                  width: 43,
                ),
              ),
              // ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 100,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFDDADBF5),
                ),
                child: Image.asset(
                  "assets/images/brandico_facebook.png",
                  width: 5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "or Login with Email",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            height: 56,
            width: double.infinity,
            margin: EdgeInsets.only(left: 5, right: 5),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                fillColor: Color(0xFFDF8F8FA),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                hintText: "Name",

                //icon: Icon(Icons.phone_android)
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            height: 56,
            width: double.infinity,
            margin: EdgeInsets.only(left: 5, right: 5),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                fillColor: Color(0xFFDF8F8FA),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                hintText: "Email",

                //icon: Icon(Icons.phone_android)
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            height: 56,
            width: double.infinity,
            margin: EdgeInsets.only(left: 5, right: 5),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 3, left: 15),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                hintText: "Password",

                //icon: Icon(Icons.phone_android)
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          Container(
            height: 56,
            width: double.infinity,
            margin: EdgeInsets.only(left: 5, right: 5),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 3, left: 15),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                hintText: "confirm Password",

                //icon: Icon(Icons.phone_android)
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
                Text(
                  "agree the term and condition",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          DefaultButton(
            text: "Sign Up",
            press: () {},
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Alredy have an account?"),
            Container(
              child: TextButton(
                child: Text("  Sign in"),
                onPressed: () {
                  Navigator.of(context).pop();
                  // MaterialPageRoute(builder: (context) => SignIn()),
                },
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
