import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    required this.batteryLevel,
    required this.increaseBatteryLevel,
    super.key,
  });

  final void Function() increaseBatteryLevel;
  final int batteryLevel;

  final List<IconData> batteryLevelIconsList = [
    Icons.battery_0_bar,
    Icons.battery_1_bar,
    Icons.battery_2_bar,
    Icons.battery_3_bar,
    Icons.battery_4_bar,
    Icons.battery_5_bar,
    Icons.battery_6_bar,
    Icons.battery_full,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          batteryLevelIconsList[batteryLevel],
          size: 150,
          color: Colors.green,
        ),
        IconButton(
          iconSize: 150,
          onPressed: increaseBatteryLevel,
          icon: Icon(Icons.battery_0_bar),
        ),
      ],
    );
  }
}
