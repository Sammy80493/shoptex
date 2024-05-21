import 'package:flutter/material.dart';

class IconBtnWidget extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  final Color? color;
  const IconBtnWidget({
    super.key,
    required this.iconData,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData),
      color: color,
      splashColor: Theme.of(context).colorScheme.background,
    );
  }
}
