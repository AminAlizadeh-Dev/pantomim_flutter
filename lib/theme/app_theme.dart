import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'colors.dart';
import 'dimense.dart';

NeumorphicThemeData appTheme(BuildContext context) {
  return NeumorphicThemeData(
    baseColor: AppColors.primaryColor,
    defaultTextColor: AppColors.textColorDark,
variantColor: AppColors.primaryColor,
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
          fontFamily: 'aviny',
          fontWeight: FontWeight.w700,
          fontSize: headline4Size(context)),
      headline5: TextStyle(
        color: Colors.white,
        fontFamily: 'aviny',
          fontWeight: FontWeight.w500,
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontFamily: 'aviny',
          fontWeight: FontWeight.w500
      ),
      subtitle1: TextStyle(
          height: 1.5,

          color: AppColors.textColorDark,
          fontSize: subTitleSize(context),
          fontFamily: 'aviny',
          fontWeight: FontWeight.w500),
      subtitle2: TextStyle(
        height: 1.5,

        color: AppColors.primaryColor,
          fontSize: subTitleSize(context),
          fontFamily: 'aviny',
          fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
          height: 1.5,
          fontFamily: 'aviny',
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w500),
      bodyText2: TextStyle(
          height: 1.5,

          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontFamily: 'aviny',
          fontWeight: FontWeight.w500),
      caption: TextStyle(
          height: 1.5,

          fontSize: caption1Size(context),
          fontFamily: 'aviny',
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w400),
    ),
  );
}
