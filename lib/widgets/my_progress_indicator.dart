import 'package:flutter/material.dart';
import 'package:simple_counter_app/widgets/my_text.dart';

class MyProgressIndicator extends StatelessWidget {
  const MyProgressIndicator({required this.progress, super.key});

  final int progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          MyText(txt: '${progress.toString()}%', size: 50, whatsFontWeight: FontWeight.bold,),
          SizedBox(
            width: 170,
            height: 70,
            child: CircularProgressIndicator(
              strokeWidth: 10,
              color: Colors.green,
              value: progress / 100,
            ),
          ),
        ],
      ),
    );
  }
}
