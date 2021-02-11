import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class StartGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartGamePageState();
}

class StartGamePageState extends State<StartGamePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: NeumorphicTheme.accentColor(context),
        body: Stack(
          children: [
            Positioned.fill(
              right: 30,
              left: 30,
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
              right: 65,
              left: 65,
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
              right: 30,
              left: 30,
              bottom: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: fullWidth(context) / 4.6,
                    child: NeuButton(() {},
                        title: "تعویض",
                        color: Color(0xff0090FF),
                        align: TextAlign.center,),
                  ),
                  SizedBox(
                    width: fullWidth(context) / 4.6,
                    child: NeuButton(() {},
                        title: "شروع",
                        color: Color(0xff388E3C),
                        align: TextAlign.center),
                  ),
                ],
              ),
            ),
            Positioned(
              top: fullHeight(context) / 1.8,
              right: fullWidth(context) / 3,
              left: fullWidth(context) / 3,
              bottom: fullHeight(context) / 2.5,
              child: Neumorphic(
                child: Text(
                  "تعداد دور",
                  style: TextStyle(
                    color: appTheme(context).defaultTextColor,
                    fontFamily: "aviny",
                    height: 1.7,
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
                    child: Lottie.asset('assets/timer.json'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
