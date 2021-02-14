import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget teamDetailBox(
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
                depth: 2,
                  intensity: 4,
                  color: appTheme(context).baseColor,
                  boxShape: (NeumorphicBoxShape.roundRect(BorderRadius.circular(fullWidth(context)/1)))
              ),
              child: Container(
                margin: EdgeInsets.only(right: xSmallSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      topic,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: fullWidth(context) / 16,
                          height: fullWidth(context) / 185),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      point,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: fullWidth(context) / 16,
                          height: fullWidth(context) / 185),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -2,
            top: 0,
            bottom: 0,
            child: SizedBox(
              width: fullWidth(context)/9,
              height: fullWidth(context)/9,
              child: Neumorphic(
                  padding: EdgeInsets.symmetric(horizontal: smallSize(context),vertical: mediumSize(context)),
                  style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 1,
                    intensity: 2,
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
