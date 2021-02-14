import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/score_box.dart';
import 'package:pantomim_flutter/widgets/team_details_box.dart';

class RoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RoundPageState();
}

class RoundPageState extends State<RoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.accentColor(context),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: fullWidth(context),
          height: fullHeight(context),
//          margin: EdgeInsets.only(top: fullWidth(context) / 10.5),
          child: Stack(
            children: [
              Positioned.fill(
                top: fullWidth(context) / 2.5,
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
                        depth: 3,
                        intensity: 6,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            teamDetailBox(context, 'تیم اول', '36 امتیاز',
                                'assets/play_icon.svg'),
                            teamDetailBox(context, 'تیم دوم', '41 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم سوم', '33 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم چهارم', '22 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم پنجم', '26 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم ششم', '21 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم هفتم', '18 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم نهم', '29 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم دهم', '14 امتیاز',
                                ''),
                            teamDetailBox(context, 'تیم یازدهم', '40 امتیاز',
                                '')
                          ],
                        ),
                      ),
                    )),
              ),
              Positioned(
                top: xxLargeSize(context),
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
                    child: NeumorphicText(
                      'دور 1 از 3',
                      textAlign: TextAlign.center,
                      textStyle: NeumorphicTextStyle(
                          fontFamily: 'kalameh',
                          fontSize: fullWidth(context) / 13,
                          height: fullWidth(context) / 230),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: xxLargeSize(context),
                right: standardSize(context),
                left: standardSize(context),
                child: Container(
                  width: fullWidth(context),
                  height: xlargeSize(context),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: 1.75,
                        intensity: 3.5,
                        color: AppColors.accentColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(standardSize(context)),
                              bottomRight:
                                  Radius.circular(standardSize(context))),
                        )),
                    child: NeumorphicText(
                      'امتیازات این دور:  35',
                      textAlign: TextAlign.center,
                      textStyle: NeumorphicTextStyle(
                          fontFamily: 'kalame',
                          fontSize: fullWidth(context) / 13,
                          height: fullWidth(context) / 190),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: fullWidth(context) / 7,
                      width: fullWidth(context) / 7,
                      child: NeuButton(
                            () {},
                        svg: 'assets/play_icon.svg',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: mediumSize(context)),
                      height: fullWidth(context) / 7,
                      width: fullWidth(context) / 7,
                      child: NeuButton(
                            () {},
                        svg: 'assets/power_icon.svg',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: mediumSize(context)),
                      height: fullWidth(context) / 7,
                      width: fullWidth(context) / 7,
                      child: NeuButton(
                            () {},
                        svg: 'assets/role_icon.svg',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
