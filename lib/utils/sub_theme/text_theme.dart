import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //For Title Text
    titleLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(
          fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    titleMedium: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    titleSmall: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
    ),
    //For Label Text
    labelMedium: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
    ),
    labelSmall: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 17, fontWeight: FontWeight.w300, color: Colors.black),
    ),
    //For Body Text
    bodyMedium: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    bodySmall: GoogleFonts.raleway(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
    ),
  );

  //For Dark Mode
  static TextTheme darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.poppins(
      textStyle: const TextStyle(
          fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    titleMedium: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    titleSmall: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
    ),
    //For Label Text
    labelMedium: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    ),
    labelSmall: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 17, fontWeight: FontWeight.w300, color: Colors.white),
    ),
    //For Body Text
    bodyMedium: GoogleFonts.raleway(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    bodySmall: GoogleFonts.raleway(
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
