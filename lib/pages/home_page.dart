import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
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
                child: SizedBox(
              width: fullWidth(context) / 2.55,
              child: NeumorphicButton(
                onPressed: () {},
                child: Lottie.asset("assets/play.json"),
                style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                    color: appTheme(context).variantColor,
                    depth: 5,
                    intensity: 10),
              ),
            )),
            Container(
              margin: EdgeInsets.only(bottom: standardSize(context)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: fullWidth(context) / 6.9,
                      width: fullWidth(context) / 6.9,
                      child: NeuButton(
                        () {},
                        svg: ("assets/icon_rate.svg"),
                        size: mediumSize(context),
                      ),
                    ),
                    SizedBox(
                      height: fullWidth(context) / 6.9,
                      width: fullWidth(context) / 6.9,
                      child: NeuButton(
                        () {},
                        svg: ("assets/icon_add_word.svg"),
                        size: mediumSize(context),
                      ),
                    ),
                    SizedBox(
                      height: fullWidth(context) / 6.9,
                      width: fullWidth(context) / 6.9,
                      child: NeuButton(
                        () {},
                        svg: ("assets/power_icon.svg"),
                        size: mediumSize(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.78,0.67),
                child: SizedBox(
              height: fullWidth(context) / 6.9,
              width: fullWidth(context) / 6.9,
              child: NeuButton(
                () {},
                svg: ("assets/power_icon.svg"),
                radius: largeSize(context),
                size: mediumSize(context),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
