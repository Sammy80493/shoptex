// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoptex/providers/cart_provider.dart';
import 'package:shoptex/screens/cart/cart_list_item.dart';
import 'package:shoptex/utils/colors.dart';
import 'package:shoptex/utils/strings.dart';
import 'package:shoptex/widgets/bottomsheet_widget.dart';
import 'package:shoptex/widgets/empty_item_widget.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isEmpty = false;
  late int cartItemNumer;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    final cartProvider = Provider.of<CartProvider>(context);
    return isEmpty
        ? Scaffold(
            body: EmptyItemWidget(
              imgTxt: AppStrings.shopOrder,
              onPressed: () {},
            ),
          )
        : Scaffold(
            appBar: AppBar(
              title: TextWidget(
                  txt: 'Cart(5)',
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
                  iconData: Icons.delete_outline_rounded,
                  onPressed: () {},
                )
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    itemBuilder: (BuildContext context, int index) {
                      return cart_list_item(
                        height: height,
                        width: width,
                        cartProvider: cartProvider,
                        imgUrl: '',
                        price: 54.80,
                        qty: 10,
                        delete: () {},
                        favourite: () {},
                        name: 'SSD Hard Drive',
                      );
                    },
                  ),
                ),
                BottomSheetWidget(
                  height: height,
                )
              ],
            ),
          );
  }
}
