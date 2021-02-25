import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget numPicker(BuildContext context, String number) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: largeSize(context),
      vertical: standardSize(context),
    ),
    width: fullWidth(context) / 1.5,
    height: fullWidth(context) / 7.4,
    child: Stack(
      overflow: Overflow.visible,
      children: [
        Positioned.fill(
            child: Neumorphic(
          style: NeumorphicStyle(
              depth: 5,
              intensity: 10,
              color: AppColors.accentColor,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(fullWidth(context) / 1),
              )),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: xlargeSize(context)),
            child: Center(
              child: Text(
                number,
                maxLines: 1,
                style: TextStyle(fontSize: fullWidth(context) / 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        )),
        Align(
          alignment: Alignment(1.06, 0.0),
          child: NeumorphicButton(
            pressed: false,
            onPressed: () {},
            provideHapticFeedback: false,
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: SizedBox(
              height: fullHeight(context) / 20,
              width: fullWidth(context) / 20,
              child: SvgPicture.asset(
                "assets/icon_plus.svg",
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(-1.06, 0.0),
          child: NeumorphicButton(
            onPressed: () {},
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: SizedBox(
              height: fullHeight(context) / 17,
              width: fullWidth(context) / 17,
              child: SvgPicture.asset(
                "assets/icon_minus.svg",
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
