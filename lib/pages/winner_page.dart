import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class WinnerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WinnerState();
}

class WinnerState extends State<WinnerPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: appTheme(context).accentColor,
        body: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: largeSize(context)),
                child: SizedBox(
                  width: fullWidth(context),
                  height: fullHeight(context) / 2,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: 5,
                        intensity: 10,
                        color: appTheme(context).accentColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(standardSize(context)))),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: smallSize(context)),
                          child: Column(
                            children: [
                              Container(
                                  margin:
                                      EdgeInsets.only(top: mediumSize(context)),
                                  child: winnerWidget(context, "تـیـم اول",
                                      "assets/icon_star1.svg")),
                              winnerWidget(context, "14  امـتـیاز",
                                  "assets/icon_star1.svg"),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: xlargeSize(context) / 1.5),
                                  child: finalScoreWidget(
                                      context,
                                      "assets/silver_favorites_icon.svg",
                                      "امـتـیاز  10",
                                      "تـیـم دوم")),
                              Container(
                                margin:
                                    EdgeInsets.only(top: standardSize(context)),
                                child: finalScoreWidget(
                                    context,
                                    "assets/bronze_favourites_icon.svg",
                                    "امـتـیاز  5",
                                    "تـیـم سوم"),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.7, -0.50),
                          child: SvgPicture.asset("assets/icon_cup.svg"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.59),
              child: Container(
                width: fullWidth(context) / 2.4,
                height: xlargeSize(context) / 1.2,
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
                      "بــرنــده !",
                      textAlign: TextAlign.center,
                      style: appTheme(context).textTheme.headline3.copyWith(
                            color: appTheme(context).baseColor,
                            fontSize: fullWidth(context) / 13,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(standardSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NeuButton(
                      () {},
                      svg: ("assets/icon_repeat.svg"),
                      size: mediumSize(context),
                    ),
                    NeuButton(
                      () {},
                      svg: ("assets/icon_home.svg"),
                      size: mediumSize(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////////////////////// Winner Widget //////////////////////

Widget winnerWidget(BuildContext context, String text, String svg) {
  var theme = Theme.of(context);
  return Container(
    margin:
        EdgeInsets.only(right: largeSize(context), top: standardSize(context)),
    child: Align(
      alignment: Alignment.topRight,
      child: Container(
        child: Stack(
          children: [
            SizedBox(
              width: fullWidth(context) / 3.1,
              height: fullHeight(context) / 17.4,
              child: Neumorphic(
                style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 2,
                    intensity: 4,
                    boxShape: NeumorphicBoxShape.stadium()),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(right: mediumSize(context) / 0.6),
                    child: Text(
                      text,
                      textAlign: TextAlign.end,
                      style: theme.textTheme.caption,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              child: SizedBox(
                width: fullWidth(context) / 10,
                height: fullWidth(context) / 10,
                child: Neumorphic(
                    style: NeumorphicStyle(
                        color: appTheme(context).accentColor,
                        depth: 2,
                        intensity: 4,
                        boxShape: NeumorphicBoxShape.circle()),
                    child: Container(
                      padding: EdgeInsets.all(xSmallSize(context)),
                      child: SvgPicture.asset(svg),
                    )),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

////////////////////// Final score Widget //////////////////////

Widget finalScoreWidget(
    BuildContext context, String svg, String score, String team) {
  var theme = Theme.of(context);
  return Container(
    margin: EdgeInsets.symmetric(horizontal: largeSize(context)),
    child: Align(
      alignment: Alignment.topRight,
      child: Container(
        child: Stack(
          children: [
            SizedBox(
              width: fullWidth(context),
              height: fullHeight(context) / 17.4,
              child: Neumorphic(
                style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 2,
                    intensity: 4,
                    boxShape: NeumorphicBoxShape.stadium()),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(right: mediumSize(context) / 0.6),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: largeSize(context)),
                          child: Text(
                            team,
                            textAlign: TextAlign.start,
                            style: theme.textTheme.caption,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: xlargeSize(context) / 0.75),
                          child: Text(
                            score,
                            textAlign: TextAlign.end,
                            style: theme.textTheme.caption,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              child: SizedBox(
                width: fullWidth(context) / 10,
                height: fullWidth(context) / 10,
                child: Neumorphic(
                    style: NeumorphicStyle(
                        color: appTheme(context).accentColor,
                        depth: 2,
                        intensity: 4,
                        boxShape: NeumorphicBoxShape.circle()),
                    child: Container(
                      padding: EdgeInsets.all(xSmallSize(context)),
                      child: SvgPicture.asset(svg),
                    )),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
