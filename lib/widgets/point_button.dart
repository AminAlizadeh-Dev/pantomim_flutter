import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget pointButton(BuildContext context, String text) {
  return NeumorphicButton(
    onPressed: () {},
    style: NeumorphicStyle(
      color: appTheme(context).accentColor,
      depth: 4,
      intensity: 8,
      boxShape: NeumorphicBoxShape.circle(),
    ),
    child: NeumorphicText(
      text,
      textStyle: NeumorphicTextStyle(
        fontFamily: "aviny",
        fontSize: fullWidth(context) / 14,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
