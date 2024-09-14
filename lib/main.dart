import 'package:flutter/material.dart';
import 'package:pokemon/HomeScreen.dart';
import 'package:pokemon/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Pokemon",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
