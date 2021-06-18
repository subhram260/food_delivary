import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivary/widget/home_top_info.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LocationApp extends StatefulWidget {
  // const Locap({ Key? key }) : super(key: key);

  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  Timer _timer;

  var locationMassege = "";
  String locationAddress = "";

  void currentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
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
    locationAddress = "$address1 , $address2 , $address3\n";

    // if (!mounted)
    // setState(() {
    //   locationMassege = "Latitude : $lat \n Longitude : $lon";
    //   locationAddress = "Place : $address1 , $address2 , $address3\n";
    // });

    // return locationAddress;
  }

  @override
  void initState() {
    currentLocation();
    void initState() {
      super.initState();
      EasyLoading.addStatusCallback((status) {
        print('EasyLoading Status $status');
        if (status == EasyLoadingStatus.dismiss) {
          _timer?.cancel();
        }
      });
      // EasyLoading.showSuccess('Use in initState');
      // EasyLoading.removeCallbacks();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location App"),
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
            // Text(
            //   "Position : ",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   " $locationMassege",
            //   textAlign: TextAlign.center,
            // ),
            // Text(
            //   " $locationAddress",
            //   textAlign: TextAlign.center,
            // ),
            FlatButton(
              onPressed: () {
                // String place = ;
                EasyLoading.show(status: 'Finding Location ...');

                print(locationAddress);
                if (locationAddress.isNotEmpty) {
                  Navigator.pop(context, locationAddress);
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
            )
          ],
        ),
      ),
    );
  }
}
