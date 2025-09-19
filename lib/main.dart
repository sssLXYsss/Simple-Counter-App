import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:simple_counter_app/providers/settings_provider.dart';
import 'package:simple_counter_app/screens/about.dart';
import 'package:simple_counter_app/screens/home.dart';
import 'package:simple_counter_app/screens/settings.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pageIndex = 1;

  void setPageIndex(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(builder: (context, value, child) => 
      (MaterialApp(
        theme: value.theme,
        home: Scaffold(
          body: IndexedStack(
            index: _pageIndex,
            children: [Settings(), Home(), About()],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => setPageIndex(value),
            currentIndex: _pageIndex,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'About',
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
