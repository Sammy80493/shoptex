// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shoptex/screens/cart/cart_page.dart';
import 'package:shoptex/screens/home/home_page.dart';
import 'package:shoptex/screens/profile/setting_page.dart';
import 'package:shoptex/screens/search/search_page.dart';
import 'package:shoptex/widgets/bottom_Nav_widget.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  List<Widget> screens = [
    const Home(),
    const SearchPage(),
    const CartPage(),
    const SettingPage()
  ];

  late PageController pageController;
  int screenIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: screenIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: BottomNavBarWidget(
        onItemSelected: (value) {
          setState(() {
            screenIndex = value;
          });
          pageController.jumpToPage(screenIndex);
        },
        screensIndex: screenIndex,
      ),
    );
  }
}
