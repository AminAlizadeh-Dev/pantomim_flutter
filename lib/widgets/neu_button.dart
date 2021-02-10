import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';

Widget neuButton(BuildContext context, Function onPress,
    {String title, IconData icon}) {
  return NeumorphicButton(
    onPressed: onPress,
    style: NeumorphicStyle(
        color: AppColors.accentColor,
        intensity: 1.2,
        depth: 4,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12))),
    child: title != null
        ? Text(title)
        : Icon(
            icon,
            color: appTheme(context).baseColor,
          ),
  );
}
