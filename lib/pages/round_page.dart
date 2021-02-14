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
                top: fullWidth(context) / 2.9,
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
                        intensity: 6,
                      ),
                      child: SingleChildScrollView(
                        child: Container(
                          margin: EdgeInsets.only(top: largeSize(context),bottom: xxSmallSize(context)),
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
                      ),
                    )),
              ),
              Positioned(
                top: fullHeight(context)/9,
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
                        'دور 1 از 3',
                        style: appTheme(context).textTheme.headline3.copyWith(color: appTheme(context).baseColor)),
                    ),
                    ),
                  ),
                ),
              Align(
                alignment: Alignment(0,0.94),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      height: fullWidth(context) / 7,
                      width: fullWidth(context) / 7,
                      child: NeuButton(
                            () {},
                        svg: 'assets/power_icon.svg',
                      ),
                    ),
                    Container(
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
