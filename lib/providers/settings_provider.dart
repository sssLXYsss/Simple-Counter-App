import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeData _theme = ThemeData.dark();
  ThemeData get theme => _theme;

  void changeTheme() {
    _theme = _theme == ThemeData.dark() ? ThemeData.light() : ThemeData.dark();
    notifyListeners();
  }
}