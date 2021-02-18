import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class SumPointsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SumPointsState();
}

class SumPointsState extends State<SumPointsPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: appTheme(context).accentColor,
        body: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: largeSize(context)),
                child: SizedBox(
                  width: fullWidth(context),
                  height: fullHeight(context) / 1.8,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: 5,
                        intensity: 10,
                        color: appTheme(context).accentColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.only(
                                topRight: Radius.circular(0),
                                topLeft: Radius.circular(0),
                                bottomRight: Radius.circular(
                                  standardSize(context),
                                ),
                                bottomLeft:
                                    Radius.circular(standardSize(context))))),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: mediumSize(context),
                              right: mediumSize(context),
                              top: largeSize(context) / 0.8),
                          child: Column(
                            children: [
                              positiveScoreWidget(
                                  context, "+2", "امـتیاز کـلمه",
                                  color: Color(0xff388E3C)),
                              negativeScoreWidget(
                                  context, "تـعویض کـلمه", "-5"),
                              positiveScoreWidget(
                                  context, "+7", "امـتیاز زمـان",
                                  color: Color(0xff388E3C)),
                              negativeScoreWidget(
                                  context, "خـطا حـین بـازی", "-1"),
                              positiveScoreWidget(
                                  context, "3", "امـتیاز در این دور",
                                  color: Color(0xffF57C00)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment(0, -0.7),
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: largeSize(context) / 1.3,
                    ),
                    width: fullWidth(context),
                    height: fullHeight(context) / 7.6,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          child: SizedBox(
                            width: fullWidth(context),
                            height: fullWidth(context),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                  color: appTheme(context).accentColor,
                                  depth: 4,
                                  intensity: 8,
                                  boxShape: NeumorphicBoxShape.stadium()),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 0,
                          left: -10,
                          child: Neumorphic(
                            padding: EdgeInsets.all(6.5),
                            style: NeumorphicStyle(
                                color: appTheme(context).accentColor,
                                depth: 4,
                                intensity: 8,
                                boxShape: NeumorphicBoxShape.circle()),
                            child: Image.asset("assets/happy.png"),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: largeSize(context)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(top: smallSize(context)),
                                  child: Text(
                                    "! تـبـریــک",
                                    style: theme.textTheme.subtitle2.copyWith(
                                        color: Color(0xff388E3C),
                                        height: 1,
                                        fontSize: fullWidth(context) / 12),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "3 امـتیاز گـرفتی",
                                    style: theme.textTheme.bodyText2.copyWith(
                                      color: Color(0xff388E3C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: largeSize(context),
                  right: largeSize(context),
                  child: SizedBox(
                      width: fullWidth(context) / 6.5,
                      height: fullWidth(context) / 6.5,
                      child: NeuButton(
                        () {},
                        icon: Icons.arrow_forward_ios_rounded,
                      )),
                ),
              ],
            ),
            Positioned(
              bottom: largeSize(context),
              right: largeSize(context),
              child: SizedBox(
                  width: fullWidth(context) / 6.5,
                  height: fullWidth(context) / 6.5,
                  child: NeuButton(
                    () {},
                    icon: Icons.arrow_forward_ios_rounded,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

///////////////// Negative point /////////////////

Widget negativeScoreWidget(
    BuildContext context, String textExplanation, String negativeScore) {
  var theme = Theme.of(context);
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: smallSize(context)),
      child: Stack(
        children: [
          SizedBox(
            width: fullWidth(context) / 2.5,
            height: fullHeight(context) / 17.4,
            child: Neumorphic(
              style: NeumorphicStyle(
                  color: appTheme(context).accentColor,
                  depth: 2,
                  intensity: 4,
                  boxShape: NeumorphicBoxShape.stadium()),
              child: Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: mediumSize(context)),
                child: Text(
                  textExplanation,
                  textAlign: TextAlign.right,
                  style: theme.textTheme.caption,
                ),
              ),
            ),
          ),
          SizedBox(
            width: fullWidth(context) / 10,
            height: fullWidth(context) / 10,
            child: Neumorphic(
              style: NeumorphicStyle(
                  color: appTheme(context).accentColor,
                  depth: 2,
                  intensity: 4,
                  boxShape: NeumorphicBoxShape.circle()),
              child: Center(
                child: Text(
                  negativeScore,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyText2
                      .copyWith(color: Color(0xffd81010)),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

///////////////// Positive score /////////////////

Widget positiveScoreWidget(
    BuildContext context, String positiveScore, String negativeScore,
    {Color color}) {
  var theme = Theme.of(context);
  return Align(
    alignment: Alignment.centerRight,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: smallSize(context)),
      child: Stack(
        children: [
          SizedBox(
            width: fullWidth(context) / 2.5,
            height: fullHeight(context) / 17.4,
            child: Neumorphic(
              style: NeumorphicStyle(
                  color: appTheme(context).accentColor,
                  depth: 2,
                  intensity: 4,
                  boxShape: NeumorphicBoxShape.stadium()),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(right: mediumSize(context) / 1.6),
                  child: Text(
                    negativeScore,
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
                child: Center(
                  child: Text(
                    positiveScore,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyText2.copyWith(color: color),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
