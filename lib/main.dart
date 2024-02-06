import 'package:flutter/material.dart';
import 'package:ox_game/game_board.dart' as board;
import 'package:ox_game/players_names.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "GameBoard": (_) => board.GameBoard(),
      PlayersNames.routName: (_) => PlayersNames(),
    },
    initialRoute: PlayersNames.routName,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("XO Game"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: PlayersNames(),
      ),
    ),
  ));
}
