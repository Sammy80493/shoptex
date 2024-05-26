// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shoptex/models/card_swiper_model.dart';
import 'package:shoptex/models/category_model.dart';
import 'package:shoptex/screens/home/card_slider.dart';
import 'package:shoptex/screens/home/category_item.dart';
import 'package:shoptex/screens/home/latest_item.dart';
import 'package:shoptex/screens/home/product_detail.dart';
import 'package:shoptex/utils/constants.dart';
import 'package:shoptex/utils/strings.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/shimmer_text.dart';
import 'package:shoptex/widgets/text_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const ShimmerText(txt: 'HommyTech'),
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ImgSrcWidget(
            imgTxt: AppStrings.shopLogoName,
            boxFit: BoxFit.fill,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CardSlider(
                onPressed: () {},
                width: width,
                height: height,
                images: images,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextWidget(
                txt: 'Latest Arrival',
                textOverflow: TextOverflow.ellipsis,
                textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                width: width,
                height: height * 0.2,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return LatestItem(
                      addToCart: () {},
                      nextPage: () {
                        AppConstants.push(
                          context: context,
                          widget: ProductDetail(
                            description: "Description" * 20,
                            addToCart: () {
                              //Add to Cart
                            },
                            addToFavourite: () {
                              //Add to Wishlist
                            },
                            imgUrl: AppStrings.shopOrder,
                            name: 'IPhone XR',
                            price: 34.69,
                          ),
                        );
                      },
                      favourite: () {},
                      imgUrl: '',
                      width: width,
                      height: height,
                      name: 'Iphone 15Pro',
                      price: 39.49,
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              TextWidget(
                txt: 'Categories',
                textOverflow: TextOverflow.ellipsis,
                textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.2,
                width: width,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 7,
                  ),
                  itemCount: categoryItems.length,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CategoryItem(
                      imgUrl: categoryItems[index].imgUrl,
                      categoryName: categoryItems[index].categoryName,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
