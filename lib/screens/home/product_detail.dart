import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/utils/constants.dart';
import 'package:shoptex/widgets/elevated_icon_btn.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/shimmer_text.dart';
import 'package:shoptex/widgets/text_widget.dart';

class ProductDetail extends StatefulWidget {
  final String description;
  final String imgUrl;
  final String name;
  final double price;
  final Function()? addToFavourite;
  final Function()? addToCart;
  const ProductDetail({
    super.key,
    required this.description,
    required this.imgUrl,
    required this.name,
    required this.price,
    this.addToFavourite,
    this.addToCart,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const ShimmerText(txt: 'HommyTech'),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: const Icon(Iconsax.arrow_left_outline),
          onTap: () => AppConstants.pop(context: context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.1,
                child: CachedNetworkImage(
                  imageUrl: widget.imgUrl,
                  errorWidget: (context, url, error) => Center(
                    child: AppConstants.loadingHorizontal,
                  ),
                ),
                // child: ImgSrcWidget(imgTxt: widget.imgUrl),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              TextWidget(
                txt: widget.name,
                textStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 19),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              TextWidget(
                txt: '\$${widget.price}',
                textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 19,
                      color: AppColor.darkPrimary,
                    ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconBtnWidget(
                    color: Colors.white,
                    bgColor: AppColor.darkPrimary,
                    iconData: Icons.favorite_outline_sharp,
                    onPressed: widget.addToFavourite,
                  ),
                  Elevated_icon_btn_widget(
                    color: AppColor.darkPrimary,
                    btnTitle: 'Add to cart',
                    onPressed: widget.addToCart,
                    textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    iconData: BoxIcons.bx_cart_add,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              TextWidget(
                txt: 'Description',
                textStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 19),
              ),
              TextWidget(
                txt: widget.description,
                textStyle: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
