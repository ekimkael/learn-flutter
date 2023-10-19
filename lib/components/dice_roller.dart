import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceValue = 2;
  void _rollTheDice() {
    setState(() {
      currentDiceValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/dice-$currentDiceValue.png",
          width: 160,
        ),
        const SizedBox(
          height: 24,
        ),
        TextButton(
            onPressed: _rollTheDice,
            child: const Text(
              "Roll dice",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ))
      ],
    );
  }
}
