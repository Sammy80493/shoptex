import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('theme', isOn);
    notifyListeners();
  }

  initialThemeMode() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.getBool('theme');
  }
}
