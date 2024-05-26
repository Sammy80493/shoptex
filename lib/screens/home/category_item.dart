import 'package:flutter/material.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class CategoryItem extends StatelessWidget {
  // final double width;
  // final double height;
  final String imgUrl;
  final String categoryName;
  final Function()? onTap;
  const CategoryItem({
    super.key,
    required this.imgUrl,
    required this.categoryName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ImgSrcWidget(
            imgTxt: imgUrl,
            boxFit: BoxFit.fill,
            height: 40,
            width: 40,
          ),
          // FancyShimmerImage(
          //   width: 40,
          //   height: 40,
          //   boxDecoration: const BoxDecoration(shape: BoxShape.circle),
          //   imageUrl: imgUrl,
          //   errorWidget: const Center(
          //     child: CircularProgressIndicator.adaptive(),
          //   ),
          // ),
          const SizedBox(
            height: 2.0,
          ),
          TextWidget(
            txt: categoryName,
            maxLine: 1,
            textOverflow: TextOverflow.ellipsis,
            textStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
