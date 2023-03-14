import 'package:flutter/material.dart';
import 'package:project/firebase_options.dart';
import 'package:project/views/HomePage_view.dart';
import 'package:project/views/calling_feature/phone_call.dart';
import 'package:project/views/drawer_view.dart';
import 'package:project/views/login_pin_view.dart';
import 'package:project/views/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/views/splash_view.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    );
  }
}
