import 'package:flutter/material.dart';
import 'package:food_delivary/screen/Signup.dart';
import 'package:food_delivary/body.dart';
import 'package:food_delivary/screens/main_screen.dart';
import 'Forgot.dart';

class SignIn extends StatelessWidget {
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
  String email, passward;

  GlobalKey<FormState> formkeys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkeys,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Login",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Text(
            "Access account",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          // Spacer(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // InkWell(
              //   onTap: () => googleSignIn().whenComplete(() =>
              //       Navigator.of(context).pushReplacement(
              //           MaterialPageRoute(builder: (context) => Profile()))),
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => SignUp()));

              // child:
              Container(
                width: 100,
                height: 40,
                padding: EdgeInsets.all(6),
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
            height: 20,
          ),
          Text(
            "or Login with Email",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
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
                  height: 30,
                )
              ],
            ),
          ),
          Container(
            height: 56,
            width: double.infinity,
            margin: EdgeInsets.only(left: 5, right: 5),
            child: TextFormField(
              validator: (_val) {
                if (_val.isEmpty) {
                  return "can't be empty";
                } else {
                  return null;
                }
              },
              onChanged: (val) {
                email = val;
              },
              decoration: InputDecoration(
                fillColor: Color(0xFFDF8F8FA),
                filled: true,
                contentPadding: EdgeInsets.only(top: 5, left: 15, bottom: 5),
                // border: InputBorder.none,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFDF8F8FA)),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                hintText: "Email",

                //icon: Icon(Icons.phone_android)
              ),
            ),
          ),
          SizedBox(
            height: 15,
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
                  height: 30,
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
              validator: (_val) {
                if (_val.isEmpty) {
                  return "can't be empty";
                } else {
                  return null;
                }
              },
              onChanged: (val) {
                email = val;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 3, left: 15),
                // border: InputBorder.none,
                hintText: "Password",
                fillColor: Color(0xFFDF8F8FA),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                //icon: Icon(Icons.phone_android)
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: TextButton(
              child: Text("Forgot Password ?"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Forgot()));
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          DefaultButton(
            text: "Sign in",
            press: () {
              // FocusScope.of(context).requestFocus(FocusNode());

              // Get.to(Profile());
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainScreen()));
            },
          ),
          // => signIn(email, passward).whenComplete(() =>
          //     Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(builder: (context) => Profile())))),
          SizedBox(
            height: 15,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Don't have an account ?"),
            Container(
              child: TextButton(
                child: Text("  Register"),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
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
