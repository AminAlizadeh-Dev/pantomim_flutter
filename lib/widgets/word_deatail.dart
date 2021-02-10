import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget wordDeatail(
    BuildContext context, String wordText, String pointText, String point) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: largeSize(context),
      vertical: mediumSize(context),
    ),
    width: fullWidth(context),
    height: fullWidth(context) / 7.4,
    child: Stack(
      overflow: Overflow.visible,
      children: [
        Positioned.fill(
            child: Neumorphic(
          style: NeumorphicStyle(
              depth: 4,
              intensity: 8,
              color: AppColors.accentColor,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(fullWidth(context) / 1),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NeumorphicText(
                wordText,
                style:
                    NeumorphicStyle(color: appTheme(context).defaultTextColor),
                textStyle: NeumorphicTextStyle(
                    fontFamily: "aviny", fontSize: fullWidth(context) / 22),
              ),
              NeumorphicText(
                pointText,
                style:
                    NeumorphicStyle(color: appTheme(context).defaultTextColor),
                textStyle: NeumorphicTextStyle(
                    fontFamily: "aviny", fontSize: fullWidth(context) / 22),
              ),
            ],
          ),
        )),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: NeumorphicText(
              point,
              textStyle: NeumorphicTextStyle(
                  fontFamily: "aviny",
                  fontSize: fullWidth(context) / 14,
                  height: fullWidth(context) / 290),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: SvgPicture.asset(
              'assets/close.svg',
              width: mediumSize(context),
              height: mediumSize(context),
              color: Color(0xffD81010),
            ),
          ),
        ),
      ],
    ),
  );
}
