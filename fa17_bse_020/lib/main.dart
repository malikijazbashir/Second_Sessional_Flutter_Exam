import 'package:fa17_bse_020/Hard.dart';
import 'package:fa17_bse_020/Simple.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleHard extends StatefulWidget {
  @override
  _SimpleHardState createState() => _SimpleHardState();
}

class _SimpleHardState extends State<SimpleHard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>SimpleDice()));
                },
                child: Text(
                  'Simple',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
                width: 400.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Hard()));
                },
                child: Text(
                  'Hard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


