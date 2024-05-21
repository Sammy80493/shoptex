import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeOption { dark, light, system }

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeModeOption option) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (option) {
      case ThemeModeOption.dark:
        _themeMode = ThemeMode.dark;
        await prefs.setInt('themeMode', 0); // Save dark mode index
        break;
      case ThemeModeOption.light:
        _themeMode = ThemeMode.light;
        await prefs.setInt('themeMode', 1); // Save light mode index
        break;
      case ThemeModeOption.system:
        _themeMode = ThemeMode.system;
        await prefs.setInt('themeMode', 2); // Save system mode index
        break;
    }
    notifyListeners();
  }

  Future<void> loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int themeModeIndex =
        prefs.getInt('themeMode') ?? 2; // Default to system mode
    _themeMode = _getThemeModeFromIndex(themeModeIndex);
    notifyListeners();
  }

  ThemeMode _getThemeModeFromIndex(int index) {
    switch (index) {
      case 0:
        return ThemeMode.dark;
      case 1:
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }
}
