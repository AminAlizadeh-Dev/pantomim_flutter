import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

Widget neuAppbar(BuildContext context, String title) {
  return NeumorphicAppBar(
      centerTitle: false,
      titleSpacing: 0,
      title: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
                height: fullWidth(context) / 8,
                width: fullWidth(context) / 8,
                child: neuButton(context, () {
                  Navigator.pop(context);
                }, icon: Icons.arrow_back_ios_rounded)),
          ),
          Center(
            child: NeumorphicText(
              title,
              textAlign: TextAlign.center,
              style: NeumorphicStyle(
                depth: 4, //cu// stomize depth here
                color: appTheme(context).baseColor, //customize color here
              ),
              textStyle: NeumorphicTextStyle(
                fontFamily: 'cactos',
                fontSize: fullWidth(context) / 15, //customize size here
              ),
            ),
          ),
        ],
      ));
}
