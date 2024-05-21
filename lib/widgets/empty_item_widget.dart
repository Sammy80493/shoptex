// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/elevated_btn_widget.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class EmptyItemWidget extends StatelessWidget {
  Function()? onPressed;
  final String imgTxt;
  EmptyItemWidget({
    super.key,
    this.onPressed,
    required this.imgTxt,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
            child: ImgSrcWidget(
              imgTxt: imgTxt,
            ),
          ),
          TextWidget(
            txt: 'Whoops!',
            textStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: 30,
                  color: AppColor.red,
                ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          TextWidget(
              txt: 'Your Cart is Empty',
              textStyle: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: height * 0.02,
          ),
          TextWidget(
            textAlign: TextAlign.center,
            txt:
                'Looks like your cart is empty\nAdd somthing and enjoy our service',
            textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          ElevatedBtnWidget(
            onPressed: onPressed,
            btnTitle: 'Shop Now',
            color: AppColor.darkPrimary,
          )
        ],
      ),
    );
  }
}
