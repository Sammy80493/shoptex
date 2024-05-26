import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/utils/constants.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class LatestItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final double width;
  final double price;
  final double height;
  final Function()? favourite;
  final Function()? addToCart;
  final Function()? nextPage;
  const LatestItem({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.width,
    required this.price,
    required this.height,
    this.favourite,
    this.addToCart,
    this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Card(
          child: SizedBox(
            // height: height * 0.15,
            width: width * 0.9,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: FancyShimmerImage(
                    imageUrl: imgUrl,
                    width: width * 0.35,
                    height: height * 0.2,
                    errorWidget: Center(
                      child: AppConstants.loadingCircular,
                    ),
                    boxFit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          maxLine: 1,
                          txt: name * 3,
                          textOverflow: TextOverflow.ellipsis,
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: height * 0.012,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            IconBtnWidget(
                              color: Colors.white,
                              // iconData: Icons.favorite,
                              iconData: Icons.favorite_border_outlined,
                              onPressed: favourite,
                              bgColor: AppColor.darkPrimary,
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            IconBtnWidget(
                              color: Colors.white,
                              iconData: BoxIcons.bxs_cart_add,
                              onPressed: addToCart,
                              bgColor: AppColor.darkPrimary,
                            ),
                          ],
                        ),
                        TextWidget(
                          txt: '\$$price',
                          textOverflow: TextOverflow.ellipsis,
                          textStyle:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.darkPrimary,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
