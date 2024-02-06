import 'package:flutter/material.dart';
import 'package:ox_game/players_names.dart';

import 'button_design.dart';

class GameBoard extends StatefulWidget {
  static const routName = "GameBoard";

  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> buttonsValues = ["", "", "", "", "", "", "", "", ""];

  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  @override
  Widget build(BuildContext context) {
    GameBoardArguments arguments =
        ModalRoute.of(context)!.settings.arguments as GameBoardArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("XO Game"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        arguments.name1,
                        style: const TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$scorePlayer1",
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        arguments.name2,
                        style: const TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$scorePlayer2",
                        style: const TextStyle(fontSize: 30),
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
                    index: 0,
                    onClick: onClickButton,
                  ),
                  ButtonDesign(
                    value: buttonsValues[1],
                    index: 1,
                    onClick: onClickButton,
                  ),
                  ButtonDesign(
                    value: buttonsValues[2],
                    index: 2,
                    onClick: onClickButton,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonDesign(
                    value: buttonsValues[3],
                    index: 3,
                    onClick: onClickButton,
                  ),
                  ButtonDesign(
                    value: buttonsValues[4],
                    index: 4,
                    onClick: onClickButton,
                  ),
                  ButtonDesign(
                    value: buttonsValues[5],
                    index: 5,
                    onClick: onClickButton,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ButtonDesign(
                    value: buttonsValues[6],
                    index: 6,
                    onClick: onClickButton,
                  ),
                  ButtonDesign(
                    value: buttonsValues[7],
                    index: 7,
                    onClick: onClickButton,
                  ),
                  ButtonDesign(
                    value: buttonsValues[8],
                    index: 8,
                    onClick: onClickButton,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int counter = -1;

  void onClickButton(int index) {
    setState(() {
      if (buttonsValues[index].isNotEmpty) {
        return;
      }
      counter++;
      if (counter % 2 == 0) {
        buttonsValues[index] = "X";
      } else {
        buttonsValues[index] = "O";
      }

      if (isWinner("X")) {
        scorePlayer1++;
        emptyBoard();
      } else if (isWinner("O")) {
        scorePlayer2++;
        emptyBoard();
      } else if (counter >= 9) {
        emptyBoard();
      }
    });
  }

  bool isWinner(String symbol) {
    bool isWin = false;
    //check rows
    for (int i = 0; i < 9; i += 3) {
      if (buttonsValues[i] == buttonsValues[i + 1] &&
          buttonsValues[i] == buttonsValues[i + 2] &&
          buttonsValues[i] == symbol) return true;
    }
    //check column
    for (int i = 0; i < 3; i++) {
      if (buttonsValues[i] == buttonsValues[i + 3] &&
          buttonsValues[i] == buttonsValues[i + 6] &&
          buttonsValues[i] == symbol) return true;
    }
    if (buttonsValues[0] == buttonsValues[4] &&
        buttonsValues[0] == buttonsValues[8] &&
        buttonsValues[4] == symbol) return true;
    if (buttonsValues[2] == buttonsValues[4] &&
        buttonsValues[2] == buttonsValues[6] &&
        buttonsValues[4] == symbol) return true;

    return isWin;
  }

  void emptyBoard() {
    buttonsValues = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    setState(() {});
  }
}
