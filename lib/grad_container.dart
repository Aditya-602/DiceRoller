import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradContainer extends StatelessWidget {
  const GradContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(child: DiceRollerLogic()),
    );
  }
}
