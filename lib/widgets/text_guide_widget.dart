import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/models/guide_model.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget textGuideWidget (GuideModel guide,BuildContext context){
  var theme = Theme.of(context);
  return Container(
    margin: EdgeInsets.only(top: xSmallSize(context)),
    alignment: Alignment.center,
    child: RichText(
      text: TextSpan(
          text: guide.guideType,
          style: theme.textTheme.subtitle1.copyWith(color: AppColors.primaryColor),
          children: <TextSpan>[
            TextSpan(
                text: "  ",
                style: theme.textTheme.subtitle1),
            TextSpan(
                text: guide.matchType,
                style: theme.textTheme.subtitle1),
          ]),
    ),
  );
}