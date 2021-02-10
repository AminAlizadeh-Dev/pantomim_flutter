import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_app_bar.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class NewWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewWordState();
}

class NewWordState extends State<NewWord> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: NeumorphicTheme.accentColor(context),
      appBar: neuAppbar(context, "تعریف واژه جدید"),
      body: Column(
        children: [
          Center(
            child: NeumorphicText(
              ":واژه",
              style: NeumorphicStyle(
                depth: 4, //cu// stomize depth here
                color:
                    appTheme(context).defaultTextColor, //customize color here
              ),
              textAlign: TextAlign.center,
              textStyle: NeumorphicTextStyle(
                fontFamily: "aviny",
                fontSize: subTitleSize(context),
              ),
            ),
          ),
          Neumorphic(
            padding: EdgeInsets.all(0),
            style: NeumorphicStyle(
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -5,
                intensity: 10,
                color: AppColors.accentColor),
            margin: EdgeInsets.all(largeSize(context)),
            child: NeuTextField(
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "کلمه مورد نظر تو اینجا بنویس",
                  hintStyle: TextStyle(color: Colors.grey)),
              style: TextStyle(
                  fontSize: fullWidth(context) / 23,
                  fontWeight: FontWeight.w500),
              keyboardType: TextInputType.text,
              mouseCursor: MouseCursor.uncontrolled,
            ),
          ),
          Center(
            child: NeumorphicText(
              ":امتیاز واژه",
              style: NeumorphicStyle(
                depth: 4, //cu// stomize depth here
                color:
                    appTheme(context).defaultTextColor, //customize color here
              ),
              textAlign: TextAlign.center,
              textStyle: NeumorphicTextStyle(
                fontFamily: "aviny",
                fontSize: subTitleSize(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
