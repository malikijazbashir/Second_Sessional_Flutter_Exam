import 'package:flutter/material.dart';

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

class SimpleDice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(child: Image.asset('assets/images/dice1.png'),
          ),
        ),
        Expanded(
          child: FlatButton(child: Image.asset('assets/images/dice2.png'),
          ),
        ),
      ],
    );
  }
}
