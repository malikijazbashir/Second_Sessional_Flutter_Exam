import 'dart:async';

import 'package:fa17_bse_020/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
      @override
      void initState(){
        super.initState();
        loadData();
        
      }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
                 decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/images/splash.jpg'),
                        ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Text(
                        "Muhammad Ijaz\n FA17-BSE-020",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),

                      ) ,
                      
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),


    );
  }
  Future<Timer> loadData() async{
        return new Timer(Duration(seconds: 3),onDoneLoading);
  } onDoneLoading() async{
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:  (context)=>MyApp()))    ;
      }



 }


