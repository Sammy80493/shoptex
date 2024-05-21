import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/text_widget.dart';

class CategoryItem extends StatelessWidget {
  // final double width;
  // final double height;
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: AppColor.cardColor,
            shape: BoxShape.circle,
          ),
        ),
        TextWidget(
          txt: 'Phones',
          maxLine: 1,
          textOverflow: TextOverflow.ellipsis,
          textStyle: Theme.of(context)
              .textTheme
              .labelSmall!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ],
    );
  }
}
