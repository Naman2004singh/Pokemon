import 'dart:async';
//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'package:pokemon/DetailScreen01.dart';
import 'package:pokemon/DetailScreen02.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  bool isFirst = true;
  bool isFirstNew = true;
  var Input01 = TextEditingController();

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
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: arrData
                      .map((value) => SingleChildScrollView(
                            child: Column(
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
                                  controller: Input01,
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
                                    String guess = Input01.text.toString();

                                    if (guess == "pikachu") {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen01()));
                                    } else {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailScreen02()));
                                    }
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
                            ),
                          ))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
