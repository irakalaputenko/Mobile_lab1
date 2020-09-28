import 'dart:core';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key key, this.name}) : super(key: key);
  final String name;

  @override
  _SecondScreenState createState() => _SecondScreenState(name);
}

class _SecondScreenState extends State<SecondScreen> {
  String name;

  _SecondScreenState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    "Hello, " + name + "!",
                    style: TextStyle(fontSize: 40),
                  ))),
        ],
      ),
    );
  }
}
