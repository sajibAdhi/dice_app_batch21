import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 0;
  var rightDice = 5;

  void changeLeftDice(){
    setState(() {
      leftDice = Random().nextInt(5);
    });
  }
  void changeRightDice(){
    setState(() {
      rightDice = Random().nextInt(5);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Dice App"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => changeLeftDice(),
                child: Image.asset(
                  "assets/images/dice$leftDice.png",
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () => changeRightDice(),
                child: Image.asset(
                  "assets/images/dice$rightDice.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
