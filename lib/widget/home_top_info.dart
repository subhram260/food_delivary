import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:food_delivary/utils/location.dart';
// import 'package:geocoding/geocoding.dart';

class HomeTopInfo extends StatefulWidget {
  // const HomeTopInfo({key}) : super(key: key);
  const HomeTopInfo({key}) : super(key: key);
  // int go = 0;

  @override
  _HomeTopInfoState createState() => _HomeTopInfoState();
}

class _HomeTopInfoState extends State<HomeTopInfo> {
  String place = "My Address";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xffffffff),
        child: Padding(
          padding: const EdgeInsets.only(
              top: 2.0, bottom: 2.0, left: 2.0, right: 2.0),
          // child: TextField(
          //   decoration: InputDecoration(
          //       hintText: "Home",
          //       hintStyle: textStyle,
          //       prefixIcon: Material(
          //         color: Color(0xfe5e5e5),
          //         child: Icon(
          //           Icons.location_on,
          //           color: Color(0xff6d61f2),
          //           size: 40.0,
          //         ),
          //       ),
          //       border: InputBorder.none),
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  // final result = await Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LocationApp()),
                  // );
                  // place = result;
                  // print(place);
                  // _navigateAndDisplaySelection(context);
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationApp()),
                  );
                  if (result == true) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("$result"),
                            ));
                    print("$result");
                  } else {
                    place = "$result";

                    // showDialog(
                    //     context: context,
                    //     builder: (context) => AlertDialog(
                    //           title: Text(" NO "),
                    //         ));
                  }
                  setState(() {});

                  // String place = await Navigator.of(context).push(
                  // //     MaterialPageRoute(builder: (context) => LocationApp()));
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(
                  //         builder: (context) => LocationApp()))
                  //     .then((value) {
                  //   print(value);
                  // });
                },
                child: Icon(
                  Icons.location_on,
                  color: Color(0xff6d61f2),
                  size: 40.0,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Text(
                    "Home",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                  textupdate(),
                  // met()
                ],
              ),
            ],
          ),
        ),
      ),
      //for taste the best and order now return row and for address bar return material
      // Column(//
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Text(
      //       "Taste The Best",
      //       style: textStyle,
      //     ),
      //     Text(
      //       "Order Now!",
      //       style: textStyle,
      //     )
      //   ],
      // ),
      // Icon(
      //   Icons.notifications_none,
      //   size: 30.0,
      //   color: Theme.of(context).primaryColor,
      // ),
    );
  }

  Text textupdate() {
    return Text(place,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFFD6E80B0)));
  }
}

// class HomeTopInfo extends StatelessWidget {
//   final textStyle = TextStyle(
//       fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black);

//   // Placemark address = null;
//   String place = "";

//   // _navigateAndDisplaySelection() async {
//   //   // Navigator.push returns a Future that completes after calling
//   //   // Navigator.pop on the Selection Screen.

//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         color: Color(0xffffffff),
//         child: Padding(
//           padding: const EdgeInsets.only(
//               top: 2.0, bottom: 2.0, left: 2.0, right: 2.0),
//           // child: TextField(
//           //   decoration: InputDecoration(
//           //       hintText: "Home",
//           //       hintStyle: textStyle,
//           //       prefixIcon: Material(
//           //         color: Color(0xfe5e5e5),
//           //         child: Icon(
//           //           Icons.location_on,
//           //           color: Color(0xff6d61f2),
//           //           size: 40.0,
//           //         ),
//           //       ),
//           //       border: InputBorder.none),
//           // ),
//           child: Row(
//             children: [
//               InkWell(
//                 onTap: () async {
//                   // final result = await Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => LocationApp()),
//                   // );
//                   // place = result;
//                   // print(place);
//                   // _navigateAndDisplaySelection(context);
//                   final result = await Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LocationApp()),
//                   );
//                   if (result == true) {
//                     showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                               title: Text("$result"),
//                             ));
//                     print("$result");
//                   } else {
//                     place = "My Address";
//                     showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                               title: Text(" NO "),
//                             ));
//                   }

//                   // String place = await Navigator.of(context).push(
//                   // //     MaterialPageRoute(builder: (context) => LocationApp()));
//                   // Navigator.of(context)
//                   //     .push(MaterialPageRoute(
//                   //         builder: (context) => LocationApp()))
//                   //     .then((value) {
//                   //   print(value);
//                   // });
//                 },
//                 child: Icon(
//                   Icons.location_on,
//                   color: Color(0xff6d61f2),
//                   size: 40.0,
//                 ),
//               ),
//               SizedBox(
//                 width: 15,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Home",
//                     textAlign: TextAlign.left,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
//                   ),
//                   Text(place,
//                       textAlign: TextAlign.start,
//                       style: TextStyle(
//                           fontSize: 14,
//                           // fontWeight: FontWeight.w900,
//                           color: Color(0xFFD6E80B0))),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       //for taste the best and order now return row and for address bar return material
//       // Column(//
//       //   crossAxisAlignment: CrossAxisAlignment.start,
//       //   children: <Widget>[
//       //     Text(
//       //       "Taste The Best",
//       //       style: textStyle,
//       //     ),
//       //     Text(
//       //       "Order Now!",
//       //       style: textStyle,
//       //     )
//       //   ],
//       // ),
//       // Icon(
//       //   Icons.notifications_none,
//       //   size: 30.0,
//       //   color: Theme.of(context).primaryColor,
//       // ),
//     );
//   }
// }
