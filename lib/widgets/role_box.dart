import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/models/roles_model.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget roleBox(RolesModel roleWidget, BuildContext context, {Color iconColor}) {
  return Material(
    color: Colors.transparent,
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: xSmallSize(context),
          horizontal: smallSize(context),
        ),
        width: fullWidth(context) / 1.4,
        height: fullWidth(context) / 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: fullWidth(context) / 10,
              height: fullWidth(context) / 11,
              child: Neumorphic(
                  padding: EdgeInsets.symmetric(
                    horizontal: xSmallSize(context),
                  ),
                  style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 2,
                    intensity: 4,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: SvgPicture.asset(
                    'assets/thick_icon.svg',
                    height: mediumSize(context),
                    width: mediumSize(context),
                    color: iconColor,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                roleWidget.role,
                maxLines: 2,
                style: appTheme(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
