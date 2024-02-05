import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  String value;
  Function onClick;

  ButtonDesign({super.key, required this.value, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
          onPressed: () {
            onClick();
          },
          child: Text(
            value,
            style: const TextStyle(fontSize: 30),
          )),
    ));
  }
}
