// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';
import 'package:shoptex/providers/theme_provider.dart';
import 'package:shoptex/utils/strings.dart';
import 'package:shoptex/widgets/alertdialog_widget.dart';
import 'package:shoptex/widgets/elevated_icon_btn.dart';
import 'package:shoptex/widgets/img_src_widget.dart';
import 'package:shoptex/widgets/list_tile_widget.dart';
import 'package:shoptex/widgets/shimmer_text.dart';
import 'package:shoptex/widgets/text_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    final themeProvider = Provider.of<ThemeProvider>(context);
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            replacement: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1.5),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundImage: AssetImage(
                    AppStrings.user,
                  ),
                ),
              ),
              title: TextWidget(
                txt: 'Samuel Emmanuel',
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: TextWidget(
                txt: 'Sammy80493@gmail.com',
                textStyle: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            visible: false,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: TextWidget(
                txt: 'Please login to have unlimited access',
                textStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 19),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextWidget(
                txt: 'General',
                textStyle: Theme.of(context).textTheme.bodyMedium),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTileWidget(
                  tileTxt: 'All Orders',
                  onTap: () {},
                  image: AppStrings.order2Svg,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ListTileWidget(
                  tileTxt: 'Wishlist',
                  onTap: () {},
                  image: AppStrings.wwishlist1Svg,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ListTileWidget(
                  tileTxt: 'Viewed Recently',
                  onTap: () {},
                  image: AppStrings.folderRecentSvg,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                ListTileWidget(
                  tileTxt: 'Address',
                  onTap: () {},
                  image: AppStrings.address3Svg,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 0.4,
                ),
              ),
              ListTileWidget(
                widget: TextWidget(
                  txt: 'Choose your light or dark preference',
                  textStyle: Theme.of(context).textTheme.bodySmall,
                ),
                tileTxt: 'Apperance',
                onTap: () => showAdaptiveDialog(
                  context: context,
                  builder: (context) => AlertDialogWidget(
                    height: height,
                    themeProvider: themeProvider,
                    width: width,
                  ),
                ),
                image: AppStrings.theme1Svg,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 0.4,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Elevated_icon_btn_widget(
                textStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
                btnTitle: 'Logout',
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                iconData: BoxIcons.bx_log_out,
                color: Theme.of(context).colorScheme.secondary,
              )
            ],
          ),
        ],
      ),
    );
  }
}
