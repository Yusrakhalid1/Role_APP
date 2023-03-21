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
    Timer(
      const Duration(seconds: 5), () {
    Navigator.push(
      context,
     MaterialPageRoute(builder: (context) => const Login_screen())
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
               Color(0xfd89CFF0),
               Color(0xfdFFFFFF)
            ],
            begin: Alignment.topRight,
             ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
              'SAFE  AND  QUICK  PAKISTAN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
              )),
              SizedBox(height: 20,),
              CircularProgressIndicator(
                 valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ), 
              SizedBox(height: 20,),
              Text(
                'loading...',
              style: TextStyle(
               color: Colors.black
              ),)
            ],
          ),
          
        ),
      ),
    );
  }
}
