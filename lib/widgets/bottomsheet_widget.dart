import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/elevated_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(10),
          topEnd: Radius.circular(10),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: height * 0.18,
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(10), bottomEnd: Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextWidget(
                txt: 'Total(2 Products/ 6 Items)',
                textStyle: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 19)),
            TextWidget(
              txt: '\$${88.05}',
              textStyle: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: AppColor.darkPrimary, fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedBtnWidget(
                  btnTitle: 'Checkout',
                  onPressed: () {},
                  color: AppColor.darkPrimary,
                  textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
