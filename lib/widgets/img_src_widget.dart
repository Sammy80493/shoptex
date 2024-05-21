import 'package:flutter/material.dart';

class ImgSrcWidget extends StatelessWidget {
  final String imgTxt;
  final double? width;
  final BoxFit boxFit;
  final double? height;
  const ImgSrcWidget({
    super.key,
    required this.imgTxt,
    this.width,
    this.boxFit = BoxFit.contain,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgTxt,
      filterQuality: FilterQuality.high,
      fit: boxFit,
      width: width,
      height: height,
    );
  }
}
