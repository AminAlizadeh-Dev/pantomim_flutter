import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GamePageState();
}

class GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: NeumorphicTheme.accentColor(context),
        body: Stack(
          children: [
            Positioned.fill(
              right: fullWidth(context) / 10,
              left: fullWidth(context) / 10,
              bottom: 0,
              top: 0,
              child: Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: AppColors.accentColor,
                ),
              ),
            ),
            Positioned(
              right: fullWidth(context) / 5,
              left: fullWidth(context) / 5,
              bottom: 0,
              top: 0,
              child: Neumorphic(
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: AppColors.accentColor,
                ),
              ),
            ),
            Positioned(
              right: fullWidth(context) / 10,
              left: fullWidth(context) / 10,
              bottom: fullWidth(context) / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NeuButton(() {},
                      title: "غلط",
                      color: Color(0xffD32F2F),
                      align: TextAlign.center),
                  NeuButton(() {},
                      svg: "assets/error_icon.svg",
                      color: Color(0xffF57C00),
                      align: TextAlign.center),
                  NeuButton(() {},
                      title: "درست",
                      color: Color(0xff388E3C),
                      align: TextAlign.center),
                ],
              ),
            ),
            Positioned(
              top: fullHeight(context) / 1.9,
              right: fullWidth(context) / 3,
              left: fullWidth(context) / 3,
              bottom: fullHeight(context) / 2.4,
              child: Neumorphic(
                child: Text(
                  "تعداد دور",
                  style: TextStyle(
                    color: appTheme(context).defaultTextColor,
                    fontFamily: "aviny",
                    height: 2,
                    fontSize: subTitleSize(context),
                  ),
                  textAlign: TextAlign.center,
                ),
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.stadium(),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  color: AppColors.accentColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,-0.1),
              child: Text("صندلی",
                style: TextStyle(
                  color: appTheme(context).baseColor,
                  fontFamily: "aviny",
                  fontSize: headline3Size(context),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0,-0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("01:59",
                      style: TextStyle(
                        color: appTheme(context).baseColor,
                        fontFamily: "aviny",
                        fontSize: headline3Size(context) / 1.2,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 8),
                  ),
                  Container(
                    width: fullWidth(context) / 10,
                    height: fullWidth(context) / 10,
                    child: Lottie.asset('assets/timer_lottie.json'),
                    margin: EdgeInsets.only(top: 8),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
