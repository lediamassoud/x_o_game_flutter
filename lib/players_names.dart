import 'package:flutter/material.dart';

class PlayersNames extends StatelessWidget {
  static const routName = "PlayersNames";

  TextEditingController namePlayer1 = TextEditingController();
  TextEditingController namePlayer2 = TextEditingController();

  PlayersNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("X O Game")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: namePlayer1,
              decoration: InputDecoration(
                hintText: "Enter The Name Of Player 1",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: namePlayer2,
              decoration: const InputDecoration(
                hintText: "Enter The Name Of Player 2",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "GameBoard",
                    arguments:
                        GameBoardArguments(namePlayer1.text, namePlayer2.text));
              },
              child: const Text(
                "Play",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class GameBoardArguments {
  String name1;
  String name2;

  GameBoardArguments(this.name1, this.name2);
}
