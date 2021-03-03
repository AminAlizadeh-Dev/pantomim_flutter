import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget teamName(BuildContext context, String hintText,TextEditingController controller) {
  return Container(
    width: fullWidth(context)/2.8,
    height: fullWidth(context)/7,
    child: Neumorphic(
      padding: EdgeInsets.all(0),
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: -5,
          intensity: 10,
          color: AppColors.accentColor),
      child: NeuTextField(
        controller: controller,
        textDirection: TextDirection.rtl,
        textInputAction: TextInputAction.go,

        inputFormatters:[
          LengthLimitingTextInputFormatter(5),
        ],
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        maxLengthEnforced: false,

        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey)),
        maxLines: 1,
        style: TextStyle(
            fontSize: fullWidth(context) / 23, fontWeight: FontWeight.w500),
        keyboardType: TextInputType.text,
      ),
    ),
  );
}
