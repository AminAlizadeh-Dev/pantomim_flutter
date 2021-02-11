import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/score_box.dart';
import 'package:pantomim_flutter/widgets/word_detail_widget.dart';

class SpeedScore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SpeedScoreState();
}

class SpeedScoreState extends State<SpeedScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme(context).accentColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: NeumorphicText(
          'شمارش امتیازات',
          textAlign: TextAlign.center,
          style: NeumorphicStyle(
            depth: 4, //cu// stomize depth here
            color: appTheme(context).baseColor, //customize color here
          ),
          textStyle: NeumorphicTextStyle(
            fontFamily: 'cactos',
            fontSize: fullWidth(context) / 14, //// customize size here
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            scoreBox(context, 'مگس کش', 'assets/close.svg'),
            Container(
              width: fullWidth(context) / 1.25,
              height: xlargeSize(context),
              margin: EdgeInsets.only(
                  top: standardSize(context), bottom: mediumSize(context)),
              child: Neumorphic(
                style: NeumorphicStyle(
                    depth: 7,
                    intensity: 14,
                    color: AppColors.accentColor,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(fullWidth(context) / 1),
                    )),
                child: NeumorphicText(
                  'امتیازات این دور:  35',
                  textAlign: TextAlign.center,
                  textStyle: NeumorphicTextStyle(
                      fontFamily: 'aviny',
                      fontSize: fullWidth(context) / 13,
                      height: fullWidth(context) / 190),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: largeSize(context),vertical: mediumSize(context)),
                child: SizedBox(
                    width: fullWidth(context) / 7,
                    height: fullWidth(context) / 7,
                    child: neuButton(context, () {},
                        icon: Icons.arrow_forward_ios_rounded))),
          ],
        ),
      ),
    );
  }
}
