// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shoptex/screens/search/product_grid_item.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/utils/strings.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';
import 'package:shoptex/widgets/textform_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController searchController;
  late FocusNode focusNode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController = TextEditingController();
    focusNode = FocusNode();
    searchController.clear();
    focusNode.unfocus();
  }

  @override
  void dispose() {
    searchController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        focusNode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: TextWidget(
              txt: 'Search Products',
              textStyle: Theme.of(context).textTheme.labelMedium),
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ImgSrcWidget(
              imgTxt: AppStrings.shopLogoName,
              boxFit: BoxFit.fill,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.01),
              child: TextformWidget(
                color: Theme.of(context).colorScheme.error,
                controller: searchController,
                hintText: 'Search',
                focusNode: focusNode,
                onFieldSubmitted: (p0) {
                  print(searchController.text);
                },
                prefixIcon: BoxIcons.bx_search,
                widget: IconBtnWidget(
                  iconData: Icons.clear,
                  onPressed: () {
                    searchController.clear();
                    focusNode.unfocus();
                  },
                  color: AppColor.red,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: 20,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      ),
    );
  }
}
