import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/utils/sub_theme/app_theme.dart';
import 'package:shoptex/utils/sub_theme/dialog_theme.dart';
import 'package:shoptex/utils/sub_theme/elevated_btn_theme.dart';
import 'package:shoptex/utils/sub_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      error: AppColor.red,
      onSecondaryContainer: Colors.white,
      secondary: AppColor.red,
    ),
    textTheme: AppTextTheme.lightTextTheme,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.lightElevatedBtnTheme,
    dialogTheme: AppDialogTheme.lightDialogTheme,
    cardColor: AppColor.cardColor,
    iconTheme: const IconThemeData(color: Colors.black),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black.withOpacity(0.3)),
      ),
      isDense: true,
      errorBorder: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(),
    ),
  );
  //Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: Colors.white,
      error: AppColor.red,
      onSecondaryContainer: Colors.black.withOpacity(0.1),
      secondary: AppColor.red,
    ),
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.lightElevatedBtnTheme,
    dialogTheme: AppDialogTheme.darkDialogTheme,
    cardColor: AppColor.cardColor,
    iconTheme: const IconThemeData(color: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
      ),
      isDense: true,
      errorBorder: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}
