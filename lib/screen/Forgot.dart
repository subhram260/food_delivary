import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import '../body.dart';

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Forms(),
        ));
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  String email, passward;

  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Text(
            "Forgot Password",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Text(
            "Reset Password",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
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
          DefaultButton(
            text: "Submit",
            press: () {
              FocusScope.of(context).requestFocus(FocusNode());
              showToast('Reset link send successfully',
                  gravity: Toast.BOTTOM, duration: 2);
            },
          ),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
        ],
      ),
    );
  }
}
