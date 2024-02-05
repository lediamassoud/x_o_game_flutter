import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_design.dart';

class GameBoard extends StatelessWidget {
  final List<String> buttonsValues = ["", "", "", "", "", "", "", "", ""];

  GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Text(
                  "player1: 0",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "player2: 0",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonDesign(
                  value: buttonsValues[0],
                  onClick: () {},
                ),
                ButtonDesign(value: buttonsValues[1], onClick: () {}),
                ButtonDesign(value: buttonsValues[2], onClick: () {}),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonDesign(value: buttonsValues[3], onClick: () {}),
                ButtonDesign(value: buttonsValues[4], onClick: () {}),
                ButtonDesign(value: buttonsValues[5], onClick: () {}),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonDesign(value: buttonsValues[6], onClick: () {}),
                ButtonDesign(value: buttonsValues[7], onClick: () {}),
                ButtonDesign(value: buttonsValues[8], onClick: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
