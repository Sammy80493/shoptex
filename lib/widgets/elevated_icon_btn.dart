// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shoptex/widgets/text_widget.dart';

class Elevated_icon_btn_widget extends StatelessWidget {
  final String btnTitle;
  final IconData iconData;
  final TextStyle? textStyle;
  final double borderRadius;
  final Color? color;
  final Color? iconColor;
  final Size? size;
  final EdgeInsetsGeometry? padding;
  final Function()? onPressed;

  const Elevated_icon_btn_widget({
    super.key,
    required this.btnTitle,
    required this.iconData,
    this.textStyle,
    this.borderRadius = 15.0,
    this.color,
    this.iconColor = Colors.white,
    this.size,
    this.padding,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(iconData, color: iconColor),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: size,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      label: TextWidget(
        txt: btnTitle,
        textStyle: textStyle,
      ),
      onPressed: onPressed,
    );
  }
}
