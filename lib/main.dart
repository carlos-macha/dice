import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceBase());
}

class DiceBase extends StatelessWidget {
  const DiceBase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 10,
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

    int leftDiceNumber = 1;
    int rightDiceNumber = 1;

    void randomNumber() {
      setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });
    }

  @override
  Widget build(BuildContext context) {

    leftDiceNumber;
    rightDiceNumber;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  randomNumber();
                },
                child: Image.asset('lib/images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  randomNumber();
                },
                child: Image.asset('lib/images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
