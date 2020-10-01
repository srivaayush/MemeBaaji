import 'dart:async';

import 'package:flutter/material.dart';
import 'home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        body: Center(
            child: SingleChildScrollView(
                child: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              "assets/memebaaji.jpg",
              fit: BoxFit.fill,
              height: 300,
            ),
          ]),
        ))));
  }
}
