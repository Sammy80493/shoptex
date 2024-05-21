// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoptex/widgets/text_widget.dart';

class ElevatedBtnWidget extends StatelessWidget {
  final String btnTitle;
  EdgeInsetsGeometry? edgeInsetsGeometry;
  final TextStyle? textStyle;
  Function()? onPressed;
  final double borderRadius;
  final Size? size;
  final Color? color;
  ElevatedBtnWidget({
    super.key,
    required this.btnTitle,
    this.edgeInsetsGeometry,
    this.textStyle,
    this.onPressed,
    this.borderRadius = 0.0,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: size,
        padding: edgeInsetsGeometry,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: TextWidget(
        txt: btnTitle,
        textStyle: textStyle,
      ),
    );
  }
}
