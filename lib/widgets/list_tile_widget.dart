import 'package:flutter/material.dart';
import 'package:shoptex/widgets/svg_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class ListTileWidget extends StatelessWidget {
  final String image;
  final String tileTxt;
  final Widget? widget;
  final Widget? trailing;
  final Function()? onTap;
  const ListTileWidget({
    super.key,
    required this.image,
    required this.tileTxt,
    this.widget,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: onTap,
      leading: SvgWidget(
        image: image,
        width: 30,
      ),
      title: TextWidget(
        txt: tileTxt,
        textStyle: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: widget,
      trailing: trailing,
    );
  }
}
