import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

import 'neu_button.dart';

Widget DialogWidget (BuildContext context , String title){
  var theme = Theme.of(context);
  return Stack(children: [
    Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: fullWidth(context) / 1.2,
        height: fullWidth(context) / 2,
        child: Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.circular(standardSize(context))),
            depth: 10,
            lightSource: LightSource.topLeft,
            color: AppColors.accentColor,
          ),
        ),
      ),
    ),
    Align(
      alignment: Alignment(0, -0.11),
      child: Container(
        // alignment: Alignment.center,
          child: Text(title,
            style: theme.textTheme.subtitle1,
            textAlign: TextAlign.center,
          )),
    ),
    Align(
        alignment: Alignment(0.65, 0.1),
        child: SizedBox(
          width: fullWidth(context) / 6,
          height: fullWidth(context) / 6,
          child: NeuButton(
                () {},
            svg: "assets/thick_icon.svg",
            colorSvg: Color(0xff388E3C),
            size: mediumSize(context),
          ),
        )),
    Align(
        alignment: Alignment(-0.65, 0.1),
        child: SizedBox(
          width: fullWidth(context) / 6,
          height: fullWidth(context) / 6,
          child: NeuButton(
                () {},
            svg: "assets/close_small_icon.svg",
            colorSvg: Color(0xffD32F2F),
            size: mediumSize(context),
          ),
        )),
  ]);
}