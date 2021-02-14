import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'colors.dart';
import 'dimense.dart';

NeumorphicThemeData appTheme(BuildContext context) {
  return NeumorphicThemeData(
    baseColor: AppColors.primaryColor,
    defaultTextColor: AppColors.textColorDark,
    buttonStyle: NeumorphicStyle(
        color: AppColors.accentColor,
        intensity: 5,
        depth: 5,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12))),
    accentColor: AppColors.accentColor,
    textTheme: TextTheme(
      headline1:
          TextStyle(fontFamily: 'kalameh', color: AppColors.darkAccentColor,fontWeight: FontWeight.w700,),
      headline2:
          TextStyle(fontFamily: 'kalameh', color: AppColors.darkAccentColor,fontWeight: FontWeight.w700),
      headline3: TextStyle(
          fontSize: headline3Size(context),
          fontFamily: 'kalameh',
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w700,
          height: 1.4),
      headline4: TextStyle(
          color: AppColors.primaryColor,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w700,
          fontSize: headline4Size(context)),
      headline5: TextStyle(
        color: Colors.white,
        fontFamily: 'vazir',
          fontWeight: FontWeight.w500,
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontFamily: 'vazir',
          fontWeight: FontWeight.w500
      ),
      subtitle1: TextStyle(
          color: AppColors.textColorDark,
          fontSize: subTitleSize(context),
          fontFamily: 'vazir',
          fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
          color: AppColors.primaryColor,
          fontSize: subTitleSize(context),
          fontFamily: 'vazir',
          fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
          height: 1.6,
          fontFamily: 'vazir',
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w500),
      bodyText2: TextStyle(
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontFamily: 'vazir',
          fontWeight: FontWeight.w500),
      caption: TextStyle(
          fontSize: caption1Size(context),
          fontFamily: 'vazir',
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w400),
    ),
  );
}
