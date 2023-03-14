import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class Page_view extends StatefulWidget {
  const Page_view({super.key});

  @override
  State<Page_view> createState() => Page_viewState();
}


   Future<bool> checkInternetConnectivity() async {
  var connectivityResult = await Connectivity().checkConnectivity();

  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    return false;
  }
}


class Page_viewState extends State<Page_view> {
  Future<void> checkInternetConnectivity(BuildContext context) async {
  var connectivityResult = await Connectivity().checkConnectivity();

  if (connectivityResult == ConnectivityResult.none) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('No internet connection'),
        duration: Duration(seconds: 3),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
  child: Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: Text('My App'),
    ),
    body: Center(
      child: Text('Hello World!'),
    ),
  ),
);

  }
}