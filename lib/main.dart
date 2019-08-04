import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Magic8BallApp());

class Magic8BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magic 8 Ball",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Magic 8 Ball"),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue,
        body: EightBall(),
      ),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int _current_ball_number = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      //    crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: FlatButton(
          child: Image.asset("images/ball$_current_ball_number.png"),
          onPressed: () {
            setState(() {
              _current_ball_number = Random().nextInt(5) + 1;
            });
          },
        ))
      ],
    );
  }
}
