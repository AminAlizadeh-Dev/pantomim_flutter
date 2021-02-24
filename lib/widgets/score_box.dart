import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget scoreBox(
    BuildContext context, String topic, String point, String svgIcon,
    {Color iconColor}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: largeSize(context),
        vertical: xSmallSize(context),
      ),
      width: fullWidth(context) / 1.4,
      height: fullWidth(context) / 8.4,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned.fill(
            child: Neumorphic(
              style: NeumorphicStyle(
                  color: appTheme(context).accentColor,
                  depth: 8,
                  intensity: 6,
                  surfaceIntensity: 10,
                  boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(fullWidth(context) / 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      topic,
                      maxLines: 1,
                      style: appTheme(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      point,
                      maxLines: 1,
                      style: appTheme(context).textTheme.subtitle1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -2,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: fullWidth(context) / 9,
              height: fullWidth(context) / 9,
              child: Neumorphic(
                  padding: EdgeInsets.symmetric(
                      horizontal: smallSize(context),
                      vertical: mediumSize(context)),
                  style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 2,
                    intensity: 4,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: SvgPicture.asset(
                    svgIcon,
                    height: mediumSize(context),
                    width: mediumSize(context),
                    color: iconColor,
                  )),
            ),
          )
        ],
      ),
    ),
  );
}
