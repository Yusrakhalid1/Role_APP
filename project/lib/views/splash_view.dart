import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project/views/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
    Navigator.push(
      context,
     MaterialPageRoute(builder: (context) => Login_screen())
    );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
               Colors.deepOrangeAccent,
               Colors.red
            ],
            begin: Alignment.topRight,
             ),
        ),
        child: Center(
          child: Text(
          'SAFE  AND  QUICK  PAKISTAN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          )),
        ),
      ),
    );
  }
}
