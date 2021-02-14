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
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: fullWidth(context),
          height: fullHeight(context),
//          margin: EdgeInsets.only(top: fullWidth(context) / 10.5),
          child: Stack(
            children: [
//              Container(
//                  margin: EdgeInsets.only(bottom: smallSize(context)),
//                  height: xlargeSize(context),
//                  width: fullWidth(context) / 1.8,
//                  child: Neumorphic(
//                    style: NeumorphicStyle(
//                      color: appTheme(context).accentColor,
//                      depth: 3,
//                      intensity: 6,
//                    ),
//                    child: NeumorphicText(
//                      'شمارش امتیازات',
//                      textAlign: TextAlign.center,
//                      textStyle: NeumorphicTextStyle(
//                          fontFamily: 'aviny',
//                          fontSize: fullWidth(context) / 11,
//                          height: fullWidth(context) / 215),
//                    ),
//                  )),
              Positioned.fill(
                top: fullWidth(context) / 4.5,
                right: standardSize(context),
                left: standardSize(context),
                bottom: xxLargeSize(context),
                child: Container(
                    height: fullHeight(context) / 1.7,
                    width: fullWidth(context) / 1.2,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(standardSize(context))),
                        color: appTheme(context).accentColor,
                        depth: -7,
                        intensity: 5,
                      ),
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(top: largeSize(context),bottom: xxSmallSize(context)),
                          child: Column(
                            children: [
                              scoreBox(context, 'مگس کش', '1 امتیاز',
                                  'assets/close_large_icon.svg'),
                              scoreBox(context, 'مگس کش', '1 امتیاز',
                                  'assets/thick_icon.svg'),
                              scoreBox(context, 'مگس کش', '1 امتیاز',
                                  'assets/close_large_icon.svg'),
                              scoreBox(context, 'مگس کش', '1 امتیاز',
                                  'assets/close_large_icon.svg'),
                              scoreBox(context, 'مگس کش', '1 امتیاز',
                                  'assets/close_large_icon.svg'),
                              scoreBox(context, 'مگس کش', '1 امتیاز',
                                  'assets/close_large_icon.svg'),
                              scoreBox(context, 'پاس', '1 امتیاز',
                                  'assets/thick_icon.svg'),
                              scoreBox(context, 'دست', '1 امتیاز',
                                  'assets/thick_icon.svg'),
                              scoreBox(context, 'گل', '1 امتیاز',
                                  'assets/close_large_icon.svg'),
                              scoreBox(context, 'پروتون', '1 امتیاز',
                                  'assets/thick_icon.svg')
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
              Positioned(
                top: largeSize(context),
                right: xlargeSize(context),
                left: xlargeSize(context),
                child: Container(
                  width: fullWidth(context) / 1.7,
                  height: xlargeSize(context),
                  margin: EdgeInsets.only(
                      top: standardSize(context), bottom: mediumSize(context)),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: 1.75,
                        intensity: 3.5,
                        color: AppColors.accentColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(fullWidth(context) / 1),
                        )),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'امتیازات این دور:  35',
                        textAlign: TextAlign.center,
                        style: appTheme(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: mediumSize(context),
                right: smallSize(context),
                child: SizedBox(
                  height: fullWidth(context) / 7,
                  width: fullWidth(context) / 7,
                  child: NeuButton(
                    () {},
                    icon: Icons.arrow_forward_ios_rounded,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
