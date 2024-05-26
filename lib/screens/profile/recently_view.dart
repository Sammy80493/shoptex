// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoptex/screens/search/product_grid_item.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/utils/strings.dart';
import 'package:shoptex/widgets/empty_item_widget.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class RecentlyView extends StatefulWidget {
  const RecentlyView({super.key});

  @override
  _RecentlyViewState createState() => _RecentlyViewState();
}

class _RecentlyViewState extends State<RecentlyView> {
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return isEmpty
        ? Scaffold(
            body: EmptyItemWidget(
              imgTxt: AppStrings.shopOrder,
              onPressed: () {},
              titleTxt: 'There is no recently view item ',
              bodyTxt: 'Looks like there is no recent item viewed',
            ),
          )
        : Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: TextWidget(
                  txt: 'Recently View(${5})',
                  textStyle: Theme.of(context).textTheme.labelMedium),
              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ImgSrcWidget(
                  imgTxt: AppStrings.shopLogoName,
                  boxFit: BoxFit.fill,
                ),
              ),
              actions: [
                IconBtnWidget(
                  color: AppColor.red,
                  iconData: Iconsax.trash_outline,
                  onPressed: () {},
                )
              ],
            ),
            body: Column(
              children: <Widget>[
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: 20,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 3.17,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) {
                      return ProductGridItem(
                        imgUrl: '',
                        favourite: () {},
                        nextPage: () {},
                        width: width,
                        height: height,
                        name: 'SSD Hard 265gb',
                        price: 5.06,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
  }
}
