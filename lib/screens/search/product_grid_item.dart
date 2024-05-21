import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class ProductGridItem extends StatelessWidget {
  final Function()? nextPage;
  final Function()? favourite;
  final String imgUrl;
  final String name;
  final double price;
  final double width;
  final double height;

  const ProductGridItem({
    super.key,
    this.nextPage,
    this.favourite,
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FancyShimmerImage(
              imageUrl: imgUrl,
              width: width,
              height: height * 0.2,
              errorWidget: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              boxFit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextWidget(
                      txt: name,
                      textOverflow: TextOverflow.ellipsis,
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  IconBtnWidget(
                    color: AppColor.red,
                    iconData: Icons.favorite_outline_outlined,
                    onPressed: favourite,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  TextWidget(
                    txt: '\$$price',
                    textOverflow: TextOverflow.ellipsis,
                    textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.zero,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10)),
                      color: AppColor.darkPrimary,
                      shape: BoxShape.rectangle,
                    ),
                    child: IconBtnWidget(
                      color: Colors.white,
                      iconData: Icons.add_shopping_cart_rounded,
                      onPressed: favourite,
                    ),
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
