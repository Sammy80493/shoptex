import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';

class AppElevatedBtnTheme {
  AppElevatedBtnTheme._();

  static ElevatedButtonThemeData lightElevatedBtnTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: AppColor.darkPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );

  //Dark Theme
  static ElevatedButtonThemeData darkElevatedBtnTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: AppColor.darkPrimary,
    ),
  );
}
