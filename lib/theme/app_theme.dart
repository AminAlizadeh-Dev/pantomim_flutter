import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimense.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    backgroundColor: AppColors.background,
    primaryColor: AppColors.primaryColor,
    primaryColorDark: AppColors.darkPrimaryColor,
    accentColor: AppColors.accentColor,
    splashColor: AppColors.accentColor,
    brightness: Brightness.dark,
    fontFamily: 'aviny',
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
          color: AppColors.textColorDark,
          fontFamily: 'cactos',
          fontSize: headline4Size(context)),
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
      subtitle1: TextStyle(
          color: AppColors.textColorDark,
          fontSize: subTitleSize(context),
          fontWeight: FontWeight.w600),
      subtitle2: TextStyle(
          color: AppColors.textColorDark,
          fontSize: subTitleSize(context),
          fontWeight: FontWeight.w300),
      bodyText1: TextStyle(
          height: 1.6,
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w600),
      bodyText2: TextStyle(
          fontSize: bodyText1Size(context),
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w500),
      caption: TextStyle(
          fontSize: caption1Size(context),
          color: AppColors.textColorDark,
          fontWeight: FontWeight.w500),
    ),
    scaffoldBackgroundColor: AppColors.background,
    buttonTheme: ButtonThemeData(
        minWidth: double.infinity,
        padding: EdgeInsets.all(8),
        buttonColor: Theme.of(context).accentColor,
        disabledColor: Colors.grey,
        splashColor: Theme.of(context).primaryColor,
        textTheme: ButtonTextTheme.primary,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8),
        )),
  );
}
