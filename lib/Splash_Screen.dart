import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pokemon/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xfff83640), Color(0xfff9d423)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 210,
          ),
          Center(
              child: Image.asset(
            "assets/images/pok01.png",
            width: 310,
            height: 220,
          )),
          Image.asset(
            "assets/images/pok3.png",
          )
        ],
      ),
    ));
  }
}
