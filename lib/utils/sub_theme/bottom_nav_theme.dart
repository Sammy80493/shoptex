import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavTheme {
  BottomNavTheme._();

  static BottomNavigationBarThemeData lightBottomNavTheme =
      BottomNavigationBarThemeData(
    elevation: 0,
    landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
    selectedLabelStyle: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black,
    type: BottomNavigationBarType.fixed,
  );

  static BottomNavigationBarThemeData darkBottomNavTheme =
      BottomNavigationBarThemeData(
    elevation: 0,
    landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
    selectedLabelStyle: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.white,
    type: BottomNavigationBarType.fixed,
  );
}
