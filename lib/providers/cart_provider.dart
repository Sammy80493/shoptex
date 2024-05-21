import 'package:flutter/material.dart';
import 'package:shoptex/utils/constants.dart';
import 'package:shoptex/widgets/icon_btn_widget.dart';
import 'package:shoptex/widgets/text_widget.dart';

class CartProvider extends ChangeNotifier {
  showBottomSheets(BuildContext context, double height) async {
    return showBottomSheet(
      elevation: 0,
      enableDrag: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(),
      context: context,
      builder: (context) => SizedBox(
        width: double.infinity,
        height: height,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconBtnWidget(
                      onPressed: () {
                        AppConstants.pop(context: context);
                      },
                      color: Theme.of(context).colorScheme.primary,
                      iconData: Icons.cancel_sharp),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: TextWidget(
                            txt: '${index + 1}',
                            textStyle: Theme.of(context).textTheme.labelMedium),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
