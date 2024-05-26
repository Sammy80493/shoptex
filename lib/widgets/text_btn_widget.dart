import 'package:flutter/material.dart';
import 'package:shoptex/widgets/text_widget.dart';

class TextBtnWidget extends StatelessWidget {
  final Function()? onTap;
  final String txt;
  final Color? color;
  const TextBtnWidget({
    super.key,
    this.onTap,
    required this.txt,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextWidget(
        txt: txt,
        textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: color,
            ),
      ),
    );
  }
}
//  GestureDetector(
//       onTap: onTap,
//       child: TextWidget(
//           txt: txt, textStyle: Theme.of(context).textTheme.titleSmall),
//     );