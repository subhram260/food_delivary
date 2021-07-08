
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:toast/toast.dart';
class LocationApp extends StatefulWidget {
  // const Locap({ Key? key }) : super(key: key);

  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp>
    with SingleTickerProviderStateMixin {
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }

  var locationMassege = "";
  String locationAddress = "";

  void currentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    // var lastPosition = await Geolocator.getLastKnownPosition();
    // print(lastPosition);

    var lat = position.latitude;
    var lon = position.longitude;
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemarks[0];
    var address1 = place.locality;
    var address2 = place.administrativeArea;
    var address3 = place.country;
    // var address4 = place.toJson();
    // return place;
    // locationAddress = "$address1 , $address2 , $address3\n";

    setState(() {
      locationMassege = "Latitude : $lat \n Longitude : $lon";
      locationAddress = "$address1 , $address2 , $address3\n";
    });

    // return locationAddress;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Location App"),
        backgroundColor: Color(0xff6d61f2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 46,
              color: Color(0xff6d61f2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Find Current Location",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Location",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  // decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            // Text(
            //   " $locationMassege",
            //   textAlign: TextAlign.center,
            // ),
            Text(
              " $locationAddress",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.deepPurple),
            ),
            // Container(
            //   height: 200,
            //   width: 200,
            //   child: SpinKitRotatingCircle(
            //     color: Colors.black,
            //     size: 50.0,
            //   ),
            // ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () async {
                // String place = ;
                currentLocation();
                // SpinKitSquareCircle(
                //   color: Colors.black,
                //   size: 50.0,
                //   controller: AnimationController(
                //       vsync: this,
                //       duration: const Duration(milliseconds: 1200)),
                // );
                showToast("Finding Location....",
                    gravity: Toast.BOTTOM, duration: 2);
                if (locationAddress.isNotEmpty) {
                  // Navigator.pop(context, locationAddress);
                  showToast("Successfully found location",
                      gravity: Toast.BOTTOM, duration: 2);
                }
              },
              child: Text(
                "Get Current Location",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: 50,
              minWidth: 270,
              color: Color(0xff6d61f2),
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                print(locationAddress);
                if (locationAddress.isNotEmpty) {
                  // locationAdd(context, locationAddress);
                  Navigator.pop(context, locationAddress);
                }
              },
              child: Text(
                "Confirm Location",
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: 50,
              minWidth: 270,
              color: Color(0xff6d61f2),
            )
          ],
        ),
      ),
    );
  }
}

// Widget locationAdd(BuildContext context, String locationAddress) {
//   return Text("")
// }
