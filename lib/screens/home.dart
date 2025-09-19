import 'package:flutter/material.dart';
import 'package:simple_counter_app/widgets/my_button.dart';
import 'package:simple_counter_app/widgets/my_progress_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _batteryLevel = 0;
  int _chargeProgress = 0;

  void increaseBatteryLevel() {
    setState(() {
      _chargeProgress = (_chargeProgress < 100) ? _chargeProgress + 10 : 0;
      _batteryLevel = ((_chargeProgress / 100) * 7).round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyProgressIndicator(progress: _chargeProgress),
          MyButton(
            batteryLevel: _batteryLevel,
            increaseBatteryLevel: increaseBatteryLevel,
          ),
        ],
      ),
    );
  }
}
