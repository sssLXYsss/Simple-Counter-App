import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_counter_app/providers/settings_provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  void changeTheme(BuildContext context) {
    context.read<SettingsProvider>().changeTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, value, child) => Center(
        child: Column(
          children: [
            Text('SETTINGS'),
            ElevatedButton(
              onPressed: () => changeTheme(context),
              child: Text('ChangeTheme'),
            ),
          ],
        ),
      ),
    );
  }
}
