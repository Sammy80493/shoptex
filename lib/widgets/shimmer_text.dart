import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/text_widget.dart';

class ShimmerText extends StatelessWidget {
  final String txt;
  const ShimmerText({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.shimmerStandingColor,
      highlightColor: AppColor.shimmerMovingColor,
      child: TextWidget(
          txt: txt, textStyle: Theme.of(context).textTheme.titleLarge),
    );
  }
}
