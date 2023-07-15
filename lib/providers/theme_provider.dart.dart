import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  ThemeData themeData = ThemeData.light();

  void toggleTheme() {
    themeData =
        themeData == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}
