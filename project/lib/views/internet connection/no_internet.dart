import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.fromLTRB(0 , 0 , 0 , 25),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/no_internet.jpg'))
            ),
          ),
          const Text(
            'No Internet Connection',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 211, 27, 14),
              fontWeight: FontWeight.bold
            ),
          ),
         const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              ' You are not connected to the internet. Mkae sure Wi-Fi is on, Airplene Mode is off',
              style: TextStyle(
                fontSize: 16
              ),
            ),
          )
        ],
      ),
    );
  }
}