import 'package:flutter/material.dart';
import 'package:ox_game/game_board.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("XO Game"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GameBoard(),
      ),
    ),
  ));
}
