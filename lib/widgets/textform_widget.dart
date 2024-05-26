import 'package:flutter/material.dart';

class TextformWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType? keyboardType;
  final Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final IconData? prefixIcon;
  final bool obscureText;
  final Color? color;
  final String? hintText;
  final String? labelText;
  final Widget? widget;
  const TextformWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.keyboardType,
    this.onFieldSubmitted,
    this.textInputAction,
    this.prefixIcon,
    this.obscureText = false,
    this.color,
    this.hintText,
    this.labelText,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      style: Theme.of(context).textTheme.titleSmall,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        labelText: labelText,
        labelStyle: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(fontWeight: FontWeight.bold),
        hintStyle: Theme.of(context).textTheme.titleSmall,
        suffixIcon: widget,
      ),
      obscureText: obscureText,
    );
  }
}
