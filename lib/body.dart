import 'package:flutter/material.dart';
import 'package:food_delivary/screen/SignIn.dart';

class Body extends StatefulWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  PageController _controler;

  @override
  void initState() {
    _controler = PageController(initialPage: 0);
    super.initState();
  }

  var splash = [
    // List<Map< String,String,String,String,String,String,>> splash =[
    {
      "text1": "Be Together",
      "text2": "Healthy eating means eating a variety ",
      "text3": "of foods that give you the nutrients you",
      "text4": "need to maintain your health, feel",
      "text5": "good, and have energy.",
      "image": "assets/images/111.png",
    },
    {
      "text1": "Choose A Tasty Dish",
      "text2": "Order anything you want from your",
      "text3": "Favorite restaurant.",
      "text4": "",
      "text5": "",
      "image": "assets/images/222.png",
    },
    {
      "text1": "Easy Payment",
      "text2": "Payment made easy through debit",
      "text3": "card, credit card  & more ways to pay ",
      "text4": "for your food",
      "text5": "",
      "image": "assets/images/333.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
                child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              controller: _controler,
              itemCount: splash.length,
              itemBuilder: (context, index) => Spl(
                text1: splash[index]["text1"],
                text2: splash[index]["text2"],
                text3: splash[index]["text3"],
                text4: splash[index]["text4"],
                text5: splash[index]["text5"],
                image: splash[index]["image"],
              ),
            )),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splash.length, (index) => dot(index: index)),
                  ),
                  Spacer(),
                  DefaultButton(
                      text: next(currentPage),
                      press: () {
                        if (currentPage == 2) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        } else {
                          _controler.nextPage(
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut);
                        }
                      }),
                  Spacer()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer dot({int index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? Color(0xFFC6D61F2) : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }

  next(int currentPage) {
    if (currentPage == 0)
      return "Next";
    else if (currentPage == 1)
      return "Next";
    else
      return "Get Started";
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color(0xFFC6D61F2),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
    );
  }
}

class Spl extends StatelessWidget {
  const Spl({
    Key key,
    this.text1,
    this.text2,
    this.image,
    this.text3,
    this.text4,
    this.text5,
  }) : super(key: key);
  final String text1, text2, text3, text4, text5, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Image.asset(
          image,
          alignment: Alignment.center,
          height: 250,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          text1,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Text(
            text2,
            style: TextStyle(fontSize: 13),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            text3,
            style: TextStyle(fontSize: 13),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            text4,
            style: TextStyle(fontSize: 13),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            text5,
            style: TextStyle(fontSize: 13),
          ),
        )
      ],
    );
  }
}
