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
          TextStyle(fontFamily: 'cactos', color: AppColors.darkAccentColor),
      headline2:
          TextStyle(fontFamily: 'cactos', color: AppColors.darkAccentColor),
      headline3: TextStyle(
          fontSize: headline3Size(context),
          fontFamily: 'cactos',
          color: AppColors.textColorDark,
          height: 1.4),
      headline4: TextStyle(
          color: AppColors.primaryColor,
          fontFamily: 'cactos',
          fontSize: headline4Size(context)),
      headline5: TextStyle(
        color: Colors.white,
        fontFamily: 'aviny',
      ),
      headline6: TextStyle(
        color: Colors.white,
        fontFamily: 'aviny',
      ),
      subtitle1: TextStyle(
          color: AppColors.textColorDark,
          fontSize: subTitleSize(context),
          fontFamily: 'aviny',
          fontWeight: FontWeight.w600),
      subtitle2: TextStyle(
          color: AppColors.primaryColor,
          fontSize: subTitleSize(context),
          fontFamily: 'aviny',
          fontWeight: FontWeight.w300),
      bodyText1: TextStyle(
          height: 1.6,
          fontFamily: 'aviny',
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w600),
      bodyText2: TextStyle(
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontFamily: 'aviny',
          fontWeight: FontWeight.w500),
      caption: TextStyle(
          fontSize: caption1Size(context),
          fontFamily: 'aviny',
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w500),
    ),
  );
}
