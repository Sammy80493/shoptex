import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWidget extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  const SvgWidget({
    super.key,
    required this.image,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      fit: BoxFit.contain,
      width: width,
      height: height,
    );
  }
}
