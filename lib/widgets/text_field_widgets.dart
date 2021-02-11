import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget textFieldWidgets(BuildContext context, String hintText) {
  return Neumorphic(
    padding: EdgeInsets.all(0),
    style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: -5,
        intensity: 10,
        color: AppColors.accentColor),
    margin: EdgeInsets.symmetric(
        horizontal: largeSize(context), vertical: xxSmallSize(context)),
    child: NeuTextField(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey)),
      style: TextStyle(
          fontSize: fullWidth(context) / 23, fontWeight: FontWeight.w500),
      keyboardType: TextInputType.text,
      mouseCursor: MouseCursor.uncontrolled,
    ),
  );
}
