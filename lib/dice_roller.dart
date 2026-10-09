import 'package:flutter/material.dart';
import 'dart:math';

import 'package:my_app/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(20) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/cyt$currentDiceRoll.png', width: 300),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.greenAccent,
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const StyledText("+Мотивирующая цитата"),
        ),
      ],
    );
  }
}
