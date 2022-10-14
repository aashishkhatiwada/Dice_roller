import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "dice roller",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _diceNumber = 1;
  void _RollDice() {
    setState(() {
      _diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dice roller"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            "assets/dice$_diceNumber.png",
            height: 250,
            width: 250,
            semanticLabel: "dice $_diceNumber image",
          ),
        ),
        MaterialButton(
          onPressed: () {
            _RollDice();
          },
          child: const Text(
            "roll",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        ),
        SizedBox(
          height: 70,
        ),
        const Text(
          "flutter with brp",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
