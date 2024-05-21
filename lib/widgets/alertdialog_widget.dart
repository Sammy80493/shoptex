import 'package:flutter/material.dart';
import 'package:shoptex/providers/theme_provider.dart';
import 'package:shoptex/widgets/text_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({
    super.key,
    required this.height,
    this.width = 0.0,
    required this.themeProvider,
  });

  final double height;
  final double width;
  final ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: TextWidget(
          txt: 'Apperance', textStyle: Theme.of(context).textTheme.labelMedium),
      content: SizedBox(
        width: double.infinity,
        height: height * 0.15,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextBtnWidget(
                txt: 'Light Mode',
                onTap: () {
                  themeProvider.setThemeMode(ThemeModeOption.light);
                },
              ),
              TextBtnWidget(
                txt: 'Dark Mode',
                onTap: () {
                  themeProvider.setThemeMode(ThemeModeOption.dark);
                },
              ),
              TextBtnWidget(
                txt: 'Use System Mode',
                onTap: () {
                  themeProvider.setThemeMode(ThemeModeOption.system);
                },
              ),
            ]),
      ),
    );
  }
}
