import 'package:flutter/material.dart';
import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Simple Dice Game'),
          backgroundColor: Colors.teal,
        ),
        body: SimpleDice(),
      ),
    ),
  );
}

class SimpleDice extends StatefulWidget {
  @override
  _SimpleDiceState createState() => _SimpleDiceState();
}

class _SimpleDiceState extends State<SimpleDice> {

  int LeftButton = 1;
  int RightButton = 1;
  int countleft=0;
  int countright=0;
  @override
  Widget build(BuildContext context) {
    var image=3;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('Simple Dice App'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    //flex: 2,
                      child:  RaisedButton(
                        onPressed: (){
                          if(countleft>countright){
                            Alert(
                              context: context,
                              title: 'Game Winer',
                              desc:
                              'Left Dice Win game',
                            ).show();
                          }
                          else if(countright>countleft){
                            Alert(
                              context: context,
                              title: 'Game Winer',
                              desc:
                              'Right Dice game ',
                            ).show();
                          }
                          else{
                            Alert(
                              context: context,
                              title: 'Game Winer',
                              desc:
                              'Both Dice are Same',
                            ).show();
                          }
                          countleft=0;
                          countright=0;

                        },
                        child: Text(
                          'Game Winer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    //flex: 2,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            RandNum();
                          });
                        },
                        child: Image.asset('assets/images/dice$LeftButton.png')
                    ),
                  ),
                  Expanded(
                    //flex: 1,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            RandNum();
                          });
                        },
                        child: Image.asset('assets/images/dice$RightButton.png')
                    ),
                  ),
                ],
              ),
            ],
          ),


        ),
      ),
    );
  }
  void RandNum(){
    LeftButton = Random().nextInt(6) + 1;
    RightButton = Random().nextInt(6) + 1;
    countleft=countleft+LeftButton;
    countright=countright+RightButton;
  }
}

