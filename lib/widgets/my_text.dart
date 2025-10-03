import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    required this.txt,
    this.size = 18,
    this.whatsFontWeight = FontWeight.normal,
    super.key,
  });

  final double size;
  final String txt;
  final FontWeight whatsFontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(color: Colors.black87, fontWeight: whatsFontWeight, fontSize: size),
    );
  }
}
