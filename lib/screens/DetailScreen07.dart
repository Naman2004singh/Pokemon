import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailScreen07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset("assets/images/DetailHeading.png"),
          backgroundColor: Colors.cyan.shade100),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 4,
              color: Colors.deepPurple.shade300,
            )
          ], border: Border.all(width: 5, color: Colors.yellow)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset("assets/images/correct.png"),
                  Image.asset("assets/images/004.png"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/hyd.png"),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.swipe_up_rounded,
                        size: 50,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "Description :- ",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("Clasification : Mouse Pokémon",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 24,
                          color: Color.fromARGB(255, 2, 252, 227))),
                  Text("Height : 0.4m",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 24,
                          color: Color.fromARGB(255, 2, 252, 227))),
                  Text("Weight : 6.0kg",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 24,
                          color: Color.fromARGB(255, 2, 252, 227))),
                  Text("Capture Rate : 190",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 24,
                          color: Color.fromARGB(255, 2, 252, 227))),
                  Text("Base Egg Steps : 2560",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 24,
                          color: Color.fromARGB(255, 2, 252, 227))),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "Abilities :- ",
                      style: TextStyle(
                          fontFamily: "fontMain",
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text("Static : ",
                        style: TextStyle(
                            fontFamily: "fontMain",
                            fontSize: 27,
                            color: Colors.black)),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                        " The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon.",
                        style: TextStyle(
                            fontFamily: "fontMain",
                            fontSize: 24,
                            color: Color.fromARGB(255, 2, 252, 227))),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text("Lightningrod : ",
                        style: TextStyle(
                            fontFamily: "fontMain",
                            fontSize: 27,
                            color: Colors.black)),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                        "Electric-type moves are drawn to this Pokémon. Electric-type moves will do no damage and the Pokémon's SP ATK is raised one stage. If the Pokémon is Ground-type, moves are drawn to it, but it gets no boost. ",
                        style: TextStyle(
                            fontFamily: "fontMain",
                            fontSize: 24,
                            color: Color.fromARGB(255, 2, 252, 227))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
