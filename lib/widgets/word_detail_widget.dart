import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget wordDetailWidget(
    BuildContext context, String wordText, String pointText, String point) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: largeSize(context),
      vertical: standardSize(context),
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
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: fullWidth(context)/6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    wordText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(pointText),
                )
              ],
            ),
          ),
        )),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            width: fullWidth(context)/7.5,
            height: fullWidth(context)/7.5,
            child: Neumorphic(
              style: NeumorphicStyle(
                color: appTheme(context).accentColor,
                depth: 1.5,
                intensity: 3,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  point,
                  style: appTheme(context).textTheme.subtitle1.copyWith(color: appTheme(context).baseColor),
                  textAlign: TextAlign.center,
                ),
              ),
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
              'assets/close_small_icon.svg',
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
