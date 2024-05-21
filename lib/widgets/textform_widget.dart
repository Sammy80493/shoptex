import 'package:flutter/material.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';

class TextformWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String)? onFieldSubmitted;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final Color? color;
  final String? hintText;

  const TextformWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onFieldSubmitted,
    this.onTap,
    this.textInputAction,
    required this.prefixIcon,
    required this.suffixIcon,
    this.color,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      style: Theme.of(context).textTheme.titleSmall,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.titleSmall,
        suffixIcon: IconBtnWidget(
          iconData: suffixIcon,
          onPressed: onTap,
          color: color,
        ),
      ),
    );
  }
}
