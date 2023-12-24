import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [
    Colors.red,
    Colors.lime,
    Colors.grey,
    Colors.orange,
    Colors.pink,
    Colors.deepPurple,
    Colors.transparent,
    Colors.white,
    Colors.deepOrange,
    Colors.blue,
    Colors.blueGrey,
    Colors.amberAccent,
    Colors.green,
    Colors.lightGreen,
    Colors.lime
  ];
  Color getRandomColor() {
    Random random = Random();
    return colors[random.nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: getRandomColor(),
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Center(
          child: Text(
            'appuyez pour changer la couleur or click to change the color',
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
