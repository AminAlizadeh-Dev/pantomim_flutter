import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget TextGuideWidget (BuildContext context){
  var theme = Theme.of(context);
  return Container(
    margin: EdgeInsets.only(top: xSmallSize(context)),
    alignment: Alignment.center,
    child: RichText(
      text: TextSpan(
          text: "مسابقه عادی :",
          style: theme.textTheme.subtitle1.copyWith(color: AppColors.primaryColor),
          children: <TextSpan>[
            TextSpan(
                text: "  ",
                style: theme.textTheme.subtitle1),
            TextSpan(
                text: "تیم ها در چند دور مختلف با \n هم رقابت می کـنند که در هر دور تنــها یک \n کلمه به عنوان سوال مطرح خواهد شد.",
                style: theme.textTheme.subtitle1),
          ]),
    ),
  );
}