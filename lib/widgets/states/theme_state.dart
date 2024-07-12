import 'package:flutter/material.dart';

class ThemeState extends ChangeNotifier {
  bool isDark = false;
  static ThemeState instance = ThemeState();

  void changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
