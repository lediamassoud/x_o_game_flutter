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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "player1",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "player2",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
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
