import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String txt;
  final TextOverflow? textOverflow;
  final int? maxLine;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  const TextWidget({
    super.key,
    required this.txt,
    this.textOverflow,
    this.maxLine,
    this.textAlign,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: true,
      maxLines: maxLine,
      overflow: textOverflow,
      textAlign: textAlign,
      txt,
      style: textStyle,
    );
  }
}
