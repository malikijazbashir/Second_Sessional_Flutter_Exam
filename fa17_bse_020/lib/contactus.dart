import 'package:flutter/material.dart';
import 'main_drawer.dart';
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact Us Activity"),
        ),

        backgroundColor: Colors.tealAccent,
        drawer: MainDrawer(),
        body: SafeArea(
          child: Center(
            child: Text("Email: malikijazbashir@gmail.com\nPhone:03068990501",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),),
          ),
        ),
      ),

    );
  }
}
