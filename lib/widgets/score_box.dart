import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget scoreBox(BuildContext context, String topic,String svgIcon) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: largeSize(context),
      vertical: mediumSize(context),
    ),
    width: fullWidth(context) / 1.2,
    height: fullWidth(context) / 7.4,
    child: Stack(
      overflow: Overflow.visible,
      children: [
        Positioned.fill(
            child: Neumorphic(
              style: NeumorphicStyle(
                  depth: 7,
                  intensity: 14,
                  color: AppColors.accentColor,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(fullWidth(context) / 1),
                  )),
              child: Container(
                margin: EdgeInsets.only(left: fullWidth(context)/2),
                child: Text(
                    topic,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(color:Color(0xffD81B60),fontSize: fullWidth(context) / 16,height: fullWidth(context)/165),
                  overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
        Positioned(
          right: -2,
          top: 0,
          bottom: 0,
          child: Neumorphic(
            padding: EdgeInsets.symmetric(horizontal: mediumSize(context)),
              style: NeumorphicStyle(
                color: appTheme(context).accentColor,
                depth: 4,
                intensity: 8,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              child: SvgPicture.asset(svgIcon,color: Color(0xffD81010),)
        ),)
      ],
    ),
  );
}
