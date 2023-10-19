import 'package:dicer/components/dice_roller.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 91, 108, 202),
            Color.fromARGB(255, 68, 26, 140)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: const Center(child: DiceRoller()),
      ),
    );
  }
}
