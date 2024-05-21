import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shoptex/models/card_swiper_model.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/widgets/elevated_btn_widget.dart';
import 'package:shoptex/widgets/img_src_widget.dart';

class CardSlider extends StatelessWidget {
  final double width;
  final double height;
  final Function()? onPressed;
  final List<CardSwiperModel> images;
  const CardSlider(
      {super.key,
      required this.width,
      required this.height,
      required this.images,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.2,
      width: width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Swiper(
            itemCount: images.length,
            autoplay: true,
            fade: 0.1,
            autoplayDelay: 5000,
            indicatorLayout: PageIndicatorLayout.COLOR,
            pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                activeColor: AppColor.darkPrimary,
                color: Colors.white,
              ),
            ),
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedBtnWidget(
                    btnTitle: 'Shop Now',
                    onPressed: onPressed,
                    textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                    color: AppColor.darkPrimary,
                  ),
                  ImgSrcWidget(imgTxt: images[index].imgUrl),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
