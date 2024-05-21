import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shoptex/providers/cart_provider.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/outlined_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class cart_list_item extends StatelessWidget {
  const cart_list_item({
    super.key,
    required this.height,
    required this.width,
    required this.cartProvider,
    required this.imgUrl,
    required this.price,
    required this.qty,
    required this.name,
    this.delete,
    this.favourite,
  });

  final double height;
  final double width;
  final CartProvider cartProvider;
  final String imgUrl;
  final double price;
  final int qty;
  final String name;
  final Function()? delete;
  final Function()? favourite;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        height: height * 0.2,
        child: Row(
          children: <Widget>[
            FancyShimmerImage(
              imageUrl: imgUrl,
              width: width * 0.3,
              height: height * 0.2,
              errorWidget: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              boxFit: BoxFit.contain,
            ),
            SizedBox(
              width: width * 0.04,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextWidget(
                            maxLine: 3,
                            textOverflow: TextOverflow.ellipsis,
                            txt: name,
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            IconBtnWidget(
                              color: AppColor.red,
                              iconData: Icons.clear,
                              onPressed: delete,
                            ),
                            IconBtnWidget(
                              color: AppColor.red,
                              iconData: Icons.favorite_outline_outlined,
                              onPressed: favourite,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      TextWidget(
                        txt: '\$$price',
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: AppColor.darkPrimary, fontSize: 18),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: OutlinedBtnWidget(
                          btnTitle: 'Qty  $qty',
                          iconData: Icons.arrow_drop_down_outlined,
                          onPressed: () => cartProvider.showBottomSheets(
                              context, height * 0.4),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
