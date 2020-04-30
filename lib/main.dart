import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Magic ball"),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.white,
      body: Boss(),
    ),
  ));
}

class Boss extends StatefulWidget {
  @override
  _BossState createState() => _BossState();
}

class _BossState extends State<Boss> {
  int change = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                change = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$change.png'),
          ),
        ),
      ],
    ));
  }
}
