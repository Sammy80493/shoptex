import 'package:flutter/cupertino.dart';

class AppConstants {
  AppConstants._();

  static Future push(
      {required BuildContext context, required Widget widget}) async {
    return Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => widget,
        ));
  }

  static Future pushNoReplacement(
      {required BuildContext context, required Widget widget}) async {
    return Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) => widget,
        ));
  }

  static Future pop({required BuildContext context}) async {
    return Navigator.pop(context);
  }
}
