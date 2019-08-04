import 'package:flutter/material.dart';

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
      ),
    );
  }
}
