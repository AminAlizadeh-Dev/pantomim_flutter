import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

import 'neu_button.dart';

Widget dialogWidget(BuildContext context, String title, Function onPressPush,
    Function onPressClose) {
  var theme = Theme.of(context);
  return Material(
    color: Colors.transparent,
    child: Stack(children: [
      Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: fullWidth(context) / 1.2,
          height: fullWidth(context) / 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(standardSize(context)),
              color: AppColors.accentColor,
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment(0, -0.11),
        child: Container(
            // alignment: Alignment.center,
            child: Text(
          title,
          style: appTheme(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        )),
      ),
      Align(
          alignment: Alignment(0.65, 0.11),
          child: Container(
            width: fullWidth(context) / 6,
            height: fullWidth(context) / 6,
            child: NeuButton(
              onPressPush,
              svg: "assets/thick_icon.svg",
              size: smallSize(context),
              colorSvg: Color(0xff388E3C),
            ),
          )),
      Align(
          alignment: Alignment(-0.65, 0.11),
          child: Container(
            width: fullWidth(context) / 6,
            height: fullWidth(context) / 6,
            child: NeuButton(
              onPressClose,
              svg: "assets/close_small_icon.svg",
              size: smallSize(context),
              colorSvg: Color(0xffD32F2F),
            ),
          )),
    ]),
  );
}
