// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int screensIndex;
  final Function(int) onItemSelected;

  const BottomNavBarWidget({
    super.key,
    required this.screensIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        Bottom_Nav_Item(
            context: context, iconData: BoxIcons.bx_home, label: 'Home'),
        Bottom_Nav_Item(
            context: context, iconData: BoxIcons.bx_search, label: 'Search'),
        Bottom_Nav_Item(
            context: context, iconData: BoxIcons.bx_cart, label: 'Cart'),
        Bottom_Nav_Item(
            context: context, iconData: Bootstrap.person, label: 'Profile'),
      ],
      currentIndex: screensIndex,
      elevation: 0,
      onTap: onItemSelected,
      backgroundColor: Theme.of(context).colorScheme.background,
      type: BottomNavigationBarType.shifting,
    );
  }
}

BottomNavigationBarItem Bottom_Nav_Item(
    {required BuildContext context,
    required IconData iconData,
    required String label}) {
  return BottomNavigationBarItem(
    icon: Icon(iconData),
    label: label,
  );
}

//   PersistentBottomNavBarItem Bottom_Nav_Item(
//       {required BuildContext context,
//       required IconData iconData,
//       required String title}) {
//     return PersistentBottomNavBarItem(
//       icon: Icon(iconData),
//       title: title,
//       activeColorPrimary: Theme.of(context).colorScheme.primary,
//       textStyle: Theme.of(context).textTheme.titleSmall,
//     );
//   }
// }

// return BottomNavyBar(
//       animationDuration: const Duration(milliseconds: 3),
//       selectedIndex: screensIndex,
//       showElevation: false,
//       itemCornerRadius: 20,
//       backgroundColor: Colors.transparent,
//       curve: Curves.elasticInOut,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       items: [
//         BottomNavyBarItem(
//           activeColor: Theme.of(context).colorScheme.primary,
//           icon: const Icon(BoxIcons.bx_home),
//           textAlign: TextAlign.center,
//           title: Text(
//             'Home',
//             style: Theme.of(context).textTheme.titleSmall,
//           ),
//         ),
//         BottomNavyBarItem(
//             textAlign: TextAlign.center,
//             icon: const Icon(BoxIcons.bx_search),
//             activeColor: Theme.of(context).colorScheme.primary,
//             title:
//                 Text('Search', style: Theme.of(context).textTheme.titleSmall)),
//         BottomNavyBarItem(
//             textAlign: TextAlign.center,
//             icon: const Icon(BoxIcons.bx_cart),
//             activeColor: Theme.of(context).colorScheme.primary,
//             title: Text('Cart', style: Theme.of(context).textTheme.titleSmall)),
//         BottomNavyBarItem(
//           textAlign: TextAlign.center,
//           icon: const Icon(Bootstrap.person),
//           activeColor: Theme.of(context).colorScheme.primary,
//           title: Text('Profile', style: Theme.of(context).textTheme.titleSmall),
//         ),
//       ],
//       onItemSelected: onItemSelected,
//     );

// AnimatedBottomNavigationBar(
//       icons: iconData,
//       backgroundColor: Theme.of(context).colorScheme.background,
//       activeIndex: screensIndex,
//       onTap: onItemSelected,
//       blurEffect: true,
//       elevation: 0,
//     );
// AnimatedBottomNavigationBar(
//       icons: iconData,
//       backgroundColor: Theme.of(context).colorScheme.background,
//       activeIndex: screensIndex,
//       onTap: onItemSelected,
//       blurEffect: true,
//       elevation: 0,
//     );
// return PersistentTabView(
//       context,
//       backgroundColor: Theme.of(context).colorScheme.background,
//       screens: screen,
//       onItemSelected: onItemSelected,
//       items: [
//         Bottom_Nav_Item(
//           context: context,
//           iconData: BoxIcons.bx_home,
//           title: 'Home',
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(BoxIcons.bx_search),
//           title: 'Search',
//           textStyle: Theme.of(context).textTheme.titleSmall,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(BoxIcons.bx_cart),
//           title: 'Cart',
//           textStyle: Theme.of(context).textTheme.titleSmall,
//         ),
//         PersistentBottomNavBarItem(
//           icon: const Icon(Bootstrap.person),
//           title: 'Profile',
//           textStyle: Theme.of(context).textTheme.titleSmall,
//         ),
//       ],
//     );