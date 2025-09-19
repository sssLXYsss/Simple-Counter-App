import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({this.setSize = 18, required this.txt, super.key});

  final String txt;
  final int setSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          txt,
          softWrap: true,
          style: TextStyle(
            color: Colors.grey,
            fontSize: setSize.toDouble(),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
