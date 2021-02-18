import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
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
        Positioned(
          right: -4,
          top: 0,
          bottom: 0,
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
              child: Icon(
                Icons.add,
                color: Color(0xffD81B60),
              )),
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
            child: Icon(
              Icons.remove,
              color: Color(0xffD81B60),
            ),
          ),
        ),
      ],
    ),
  );
}
