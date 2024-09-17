import 'dart:async';
//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:pokemon/DetailScreen01.dart';
import 'package:pokemon/DetailScreen02.dart';
import 'package:pokemon/DetailScreen03.dart';
import 'package:pokemon/DetailScreen04.dart';
import 'package:pokemon/DetailScreen05.dart';
import 'package:pokemon/DetailScreen06.dart';
import 'package:pokemon/DetailScreen07.dart';
import 'package:pokemon/DetailScreen08.dart';
import 'package:pokemon/DetailScreen09.dart';
import 'package:pokemon/DetailScreen10.dart';
import 'package:pokemon/DetailScreen11.dart';
import 'package:pokemon/DetailScreen12.dart';
import 'package:pokemon/DetailScreen13.dart';
import 'package:pokemon/DetailScreen14.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  bool isFirst = true;
  bool isFirstNew = true;
  var Input01 = TextEditingController();
  var Input02 = TextEditingController();
  var Input03 = TextEditingController();
  var Input04 = TextEditingController();
  var Input05 = TextEditingController();
  var Input06 = TextEditingController();
  var Input07 = TextEditingController();

  /* @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () => reloadNew());
  }*/

  var arrData = [
    {
      "image": "assets/images/pokFront.png",
      "image0": "assets/images/001.png",
      //"Result": DetailScreen01()
    },
    {"image": "assets/images/pokFront.png", "image0": "assets/images/002.png"},
    {"image": "assets/images/pokFront.png", "image0": "assets/images/003.png"},
    {"image": "assets/images/pokFront.png", "image0": "assets/images/004.png"},
    {"image": "assets/images/pokFront.png", "image0": "assets/images/005.png"},
    {"image": "assets/images/pokFront.png", "image0": "assets/images/006.png"},
    {"image": "assets/images/pokFront.png", "image0": "assets/images/007.png"},
  ];

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Background.png"),
              fit: BoxFit.cover,
              opacity: 0.8),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  "assets/images/Head.png",
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 395,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: arrData
                      .asMap()
                      .map((index, value) => MapEntry(
                          index,
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(15)),
                                    border: Border.all(
                                        width: 4, color: Colors.black),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 2,
                                          color:
                                              Color.fromARGB(255, 71, 66, 19))
                                    ]),
                                child: AnimatedCrossFade(
                                  firstChild: InkWell(
                                    child: Image.asset(
                                      value['image'].toString(),
                                    ),
                                    onTap: () => setState(() {
                                      reload();
                                    }),
                                  ),
                                  secondChild: InkWell(
                                      child: Image.asset(
                                          value['image0'].toString()),
                                      onTap: () => setState(() {
                                            reload();
                                          })),
                                  crossFadeState: isFirst
                                      ? CrossFadeState.showFirst
                                      : CrossFadeState.showSecond,
                                  duration: Duration(seconds: 2),
                                  sizeCurve: Curves.bounceOut,
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              TextField(
                                controller: _getControllerForIndex(index),
                                decoration: InputDecoration(
                                  labelText: "Enter Your guess",
                                  labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                  fillColor: Colors.deepOrange.shade100,
                                  filled: true,
                                  enabled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          width: 4,
                                          color: Colors.green.shade200)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          width: 4,
                                          color: Colors.lightBlueAccent)),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  String guess = _getControllerForIndex(index)
                                      .text
                                      .toString();

                                  _handleButtonPress(index);
                                },
                                child: Text(
                                  "Show Result",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                style: ButtonStyle(
                                    elevation: WidgetStatePropertyAll(20),
                                    backgroundColor: WidgetStatePropertyAll(
                                        Colors.purple.shade200)),
                              )
                            ],
                          )))
                      .values
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }

  TextEditingController _getControllerForIndex(int index) {
    switch (index) {
      case 0:
        return Input01;
      case 1:
        return Input02;
      case 2:
        return Input03;
      case 3:
        return Input04;
      case 4:
        return Input05;
      case 5:
        return Input06;
      case 6:
        return Input07;
      default:
        return Input01; // Default case
    }
  }

  void _handleButtonPress(int index) {
    String guess = _getControllerForIndex(index).text.toString();

    if (index == 0) {
      if (guess == "pikachu") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen01())); // Navigate to Screen 1
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen02()));
      }
    } else if (index == 1) {
      if (guess == "arcanine") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen03())); // Navigate to Screen 2
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen04()));
      }
    } else if (index == 2) {
      if (guess == "umbreon") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen05())); // Navigate to Screen 3
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen06()));
      }
    } else if (index == 3) {
      if (guess == "bulbasaur") {
        //
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen07())); // Navigate to Screen 3
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen08()));
      }
    } else if (index == 4) {
      if (guess == "charmander") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen09())); // Navigate to Screen 3
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen10()));
      }
    } else if (index == 5) {
      if (guess == "blastoise") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen11())); // Navigate to Screen 3
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen12()));
      }
    } else {
      if (guess == "piplup") {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailScreen13())); // Navigate to Screen 3
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen14()));
      }
    }
  }

  @override
  void dispose() {
    // Dispose controllers when the widget is disposed
    Input01.dispose();
    Input02.dispose();
    Input03.dispose();
    Input04.dispose();
    Input05.dispose();
    Input06.dispose();
    Input07.dispose();
    super.dispose();
  }
}
