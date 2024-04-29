import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoptex/utils/themes.dart';

class ThemeProvider extends ChangeNotifier {
  bool themeStatus = false;
  bool get isDarkMode => themeStatus;

  setTheme(bool isDark) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('theme', isDark);
    themeStatus = isDark;
    notifyListeners();
  }

  initialThemeMode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    themeStatus = preferences.getBool('theme') ?? false;
    notifyListeners();
    return themeStatus;
  }

  ThemeData themeSetup(bool isDarkMode) =>
      isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;
}
