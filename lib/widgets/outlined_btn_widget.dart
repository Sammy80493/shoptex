import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/text_widget.dart';

class OutlinedBtnWidget extends StatelessWidget {
  final Function()? onPressed;
  final String btnTitle;
  final IconData iconData;
  const OutlinedBtnWidget({
    super.key,
    this.onPressed,
    required this.btnTitle,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).cardColor.withOpacity(0.3),
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.darkPrimary,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              iconData,
              color: AppColor.darkPrimary,
            ),
            TextWidget(
              txt: btnTitle,
              textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColor.darkPrimary, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
