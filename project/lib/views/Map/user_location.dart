import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher_string.dart';

class UserLocation extends StatefulWidget {
  @override
  _UserLocationState createState() => _UserLocationState();
}

class _UserLocationState extends State<UserLocation> {
  late String lat;
  late String long;

String locationMessage = 'Current Location of the user';
String button = 'Get Current Location';

  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
     if(!serviceEnabled){
      return Future.error('Location Services are Disabled');
     }
     LocationPermission permisssion = await Geolocator.checkPermission();
     if(permisssion == LocationPermission.denied){
      permisssion = await Geolocator.requestPermission();
      if(permisssion == LocationPermission.denied){
        return Future.error('Location Permisssion are denied');
      }
     }
     if(permisssion == LocationPermission.deniedForever){
      return Future.error('Location Permisssion are permanently are denied , we cannot');
     }
     return await Geolocator.getCurrentPosition();
  }

   void _LiveLocation(){
  LocationSettings locationSettings = LocationSettings(
    // accuracy: LocationAccuracy.high,
    distanceFilter: 100
  );
  Geolocator.getPositionStream(locationSettings: locationSettings).
  listen((Position position) { 
   lat = position.latitude.toString();
   long = position.longitude.toString();

    setState(() {
 locationMessage = 'latitude: $lat , longitude : $long';
   });
  });
   }

   Future <void> _openMap(String lat , String long) async{
    String googleURL = 'https://wwwgoogle.com/maps/search/?api=1query=$lat,$long';
    await canLaunchUrlString(googleURL)
    ? await launchUrlString(googleURL)
    : throw 'Could not launch $googleURL';
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(locationMessage , textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                getCurrentLocation().then((value) {
                  lat = "${value.latitude}";
                  long = "${value.longitude}";
                  setState(() {
                    locationMessage = 'latitude: $lat , longitude : $long';
                  });
                  _LiveLocation();
                });
              },
              child: Text(button),
            ),
            const SizedBox(height: 20,),
             ElevatedButton(
              onPressed: (){
                _openMap(lat , long);
              },
              child: Text('Open Google Map'),
             )
          ],
        ),
      )
    );
  }
}
