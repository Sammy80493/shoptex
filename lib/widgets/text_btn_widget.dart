import 'package:flutter/material.dart';
import 'package:shoptex/widgets/text_widget.dart';

class TextBtnWidget extends StatelessWidget {
  final Function()? onTap;
  final String txt;
  const TextBtnWidget({
    super.key,
    this.onTap,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TextWidget(
          txt: txt, textStyle: Theme.of(context).textTheme.titleSmall),
    );
  }
}
