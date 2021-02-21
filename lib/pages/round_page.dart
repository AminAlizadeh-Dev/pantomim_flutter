import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pantomim_flutter/pages/home_page.dart';
import 'package:pantomim_flutter/pages/select_topic_page.dart';
import 'package:pantomim_flutter/pages/speed_score_page.dart';
import 'package:pantomim_flutter/pages/start_game_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/dialog_widget.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/role_box.dart';
import 'package:pantomim_flutter/widgets/score_box.dart';
import 'package:pantomim_flutter/widgets/team_details_box.dart';

class RoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RoundPageState();
}

class RoundPageState extends State<RoundPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    void roleDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Material(
            color: Colors.transparent,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Container(
                  width: fullWidth(context),
                  height: fullHeight(context),
                  child: Stack(
                    children: [
                      Positioned(
                        top: fullWidth(context) / 4.5,
                        right: standardSize(context),
                        left: standardSize(context),
                        bottom: xlargeSize(context),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(standardSize(context)),
                            color: appTheme(context).accentColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: fullWidth(context) / 10.2,
                                bottom: fullWidth(context) / 14),
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: smallSize(context),
                                    horizontal: xxSmallSize(context)),
                                child: Column(
                                  children: [
                                    roleBox(
                                      context,
                                      'می توانید یک نفر را به عنوان  ناظر\n بی طرف برای داوری انتخاب کنید',
                                      'assets/thick_icon.svg',
                                    ),
                                    roleBox(
                                      context,
                                      'می توانید یک نفر را به عنوان ناظر\n  بی طرف برای داوری انتخاب کنید',
                                      'assets/thick_icon.svg',
                                    ),
                                    roleBox(
                                      context,
                                      'می توانید یک نفر را به عنوان ناظر\n  بی طرف برای داوری انتخاب کنید',
                                      'assets/thick_icon.svg',
                                    ),
                                    roleBox(
                                      context,
                                      'می توانید یک نفر را به عنوان ناظر\n  بی طرف برای داوری انتخاب کنید',
                                      'assets/thick_icon.svg',
                                    ),
                                    roleBox(
                                      context,
                                      'می توانید یک نفر را به عنوان ناظر\n  بی طرف برای داوری انتخاب کنید',
                                      'assets/thick_icon.svg',
                                    ),
                                    roleBox(
                                      context,
                                      'می توانید یک نفر را به عنوان ناظر\n  بی طرف برای داوری انتخاب کنید',
                                      'assets/thick_icon.svg',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.76, -0.7),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            'assets/close_small_icon.svg',
                            color: appTheme(context).baseColor,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.0, -0.88),
                        child: Container(
                          width: fullWidth(context) / 1.8,
                          height: xlargeSize(context) / 1.2,
                          margin: EdgeInsets.only(
                              top: standardSize(context),
                              bottom: mediumSize(context)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.accentColor,
                                borderRadius: BorderRadius.circular(
                                    fullWidth(context) / 1),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xffADADB2),
                                      blurRadius: 1,
                                      spreadRadius: 0.5,
                                      offset: Offset(0.0, 1))
                                ]),
                            child: Container(
                              alignment: Alignment.center,
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  'قـــــوانین',
                                  textAlign: TextAlign.center,
                                  style: appTheme(context)
                                      .textTheme
                                      .headline3
                                      .copyWith(
                                          color: appTheme(context).baseColor,
                                          fontSize: fullWidth(context) / 11),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    void exitDialog() {
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (BuildContext context) => dialogWidget(context,
                  "برای خروج و بازگـشــت \n به صفحه اصلی مطمئن هستید ؟", () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }, () {
                Navigator.pop(context);
              }));
    }

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
              Positioned.fill(
                top: fullWidth(context) / 3.4,
                right: standardSize(context),
                left: standardSize(context),
                bottom: fullHeight(context) / 5.5,
                child: Container(
                    height: fullHeight(context) / 4,
                    width: fullWidth(context) / 1.2,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(standardSize(context))),
                        color: appTheme(context).accentColor,
                        depth: -7,
                        intensity: 6,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: fullWidth(context) / 8,
                            bottom: xxSmallSize(context)),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              teamDetailBox(context, 'تیم اول', '36 امتیاز',
                                  'assets/play_icon.svg'),
                              teamDetailBox(
                                  context, 'تیم دوم', '41 امتیاز', ''),
                              teamDetailBox(
                                  context, 'تیم سوم', '33 امتیاز', ''),
                              teamDetailBox(
                                  context, 'تیم چهارم', '22 امتیاز', ''),
                              teamDetailBox(
                                  context, 'تیم پنجم', '26 امتیاز', ''),
                              teamDetailBox(
                                  context, 'تیم ششم', '21 امتیاز', ''),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
              Positioned(
                top: fullHeight(context) / 12,
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
                      child: Text("دور 1 از 3",
                          style: theme.textTheme.headline3
                              .copyWith(fontSize: headline3Size(context) / 1.4)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.94),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: fullWidth(context) / 7,
                        width: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            setState(() {
                              exitDialog();
                            });
                          },
                          svg: 'assets/power_icon.svg',
                          size: smallSize(context),
                        ),
                      ),
                      SizedBox(
                        height: fullWidth(context) / 7,
                        width: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            setState(() {
                              roleDialog();
                            });
                          },
                          svg: 'assets/role_icon.svg',
                          size: smallSize(context),
                        ),
                      ),
                      SizedBox(
                        height: fullWidth(context) / 7,
                        width: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectTopic()));
                          },
                          svg: 'assets/play_icon.svg',
                          size: smallSize(context),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
