import 'package:flutter/material.dart';

class IconBtnWidget extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  final Color? color;
  final Color? bgColor;
  const IconBtnWidget({
    super.key,
    required this.iconData,
    this.onPressed,
    this.color,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData),
      color: color,
      style: IconButton.styleFrom(
        backgroundColor: bgColor,
      ),
      splashColor: Theme.of(context).colorScheme.background,
    );
  }
}
