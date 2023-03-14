import 'package:flutter/material.dart';
import 'package:project/views/drawer_view.dart';

class HelpsANDfeedback extends StatelessWidget {
  const HelpsANDfeedback ({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _commentController = TextEditingController();    
    return Scaffold(
      appBar : AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel), 
          onPressed: (){
            Navigator.push(
                context,
     MaterialPageRoute(builder: (context) => MyDrawer()));
          },
          ),
      ),
      body: Center(
              child: Container(
             padding: EdgeInsets.symmetric(horizontal: 10.0),
             child: TextField(
          controller: _commentController,
          decoration: InputDecoration(
            hintText: 'Enter your comment',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
             ),
           ),
            ),
    );
  }
}