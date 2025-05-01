import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRollerLogic extends StatefulWidget {
  const DiceRollerLogic({super.key});

  @override
  State<DiceRollerLogic> createState() {
    return _DiceRollerLogic();
  }
}

class _DiceRollerLogic extends State<DiceRollerLogic> {
  var currentDiceValue = 1;

  void rollDice() {
    setState(() {
      currentDiceValue =
          randomizer.nextInt(6) + 1; // Generates a number between 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$currentDiceValue.png',
          width: 250,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 5,
          ),
          child: Text("Roll Dice!", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
