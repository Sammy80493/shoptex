import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shoptex/utils/colors.dart';

class AppConstants {
  AppConstants._();

  static Future push(
      {required BuildContext context, required Widget widget}) async {
    return Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  static Future pushNoReplacement(
      {required BuildContext context, required Widget widget}) async {
    return Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  static Future pop({required BuildContext context}) async {
    return Navigator.pop(context);
  }

  static SpinKitThreeBounce loadingHorizontal = const SpinKitThreeBounce(
    color: AppColor.darkPrimary,
    size: 40,
  );
  static SpinKitCircle loadingCircular = const SpinKitCircle(
    color: AppColor.darkPrimary,
    size: 40,
  );
}
