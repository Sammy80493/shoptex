// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shoptex/widgets/text_widget.dart';

class Elevated_icon_btn_widget extends StatelessWidget {
  final String btnTitle;
  final IconData iconData;
  final TextStyle? textStyle;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const Elevated_icon_btn_widget({
    super.key,
    required this.btnTitle,
    required this.iconData,
    this.textStyle,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(iconData, color: Colors.white),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
      ),
      label: TextWidget(
        txt: btnTitle,
        textStyle: textStyle,
      ),
      onPressed: () {},
    );
  }
}
