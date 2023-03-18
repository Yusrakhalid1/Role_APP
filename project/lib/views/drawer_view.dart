import 'package:flutter/material.dart';
import 'package:project/views/HomePage_view.dart';
import 'package:project/views/Map/tracking_view.dart';
import 'package:project/views/app_comment_view.dart';
import 'package:project/views/calling_feature/phone_call.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
            //     image: DecorationImage(
            //       alignment: Alignment.topCenter,
            //       image: NetworkImage(" assets/avator.png",)
            // ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=> const HomePage_view())
                        );
                    },
                     icon: Icon(Icons.cancel)
                     ),
                ],
              )
                 ),
                 const Divider(),
             ListTile(
              leading: const Icon(Icons.map_outlined),
              title: const Text('Map'),
              onTap: () {
               Navigator.push(
             context, 
             MaterialPageRoute(builder: (context)=> const Order_tracking())
               );
              }),
              const Divider(),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Call'),
            onTap: () {
             Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=> const Phone_Call())
               );
            },
          ),
           const Divider(),
          ListTile(
            leading: Icon(Icons.feedback),
            title: const Text('Helps & Feedback'),
            onTap: () {
               Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=> const HelpsANDfeedback())
               );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
