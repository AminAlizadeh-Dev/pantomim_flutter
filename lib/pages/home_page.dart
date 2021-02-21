import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/pages/new_game_page.dart';
import 'package:pantomim_flutter/pages/new_word_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/dialog_widget.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void exitDialog() {
      showDialog(
          barrierDismissible: true,
          context: context,
          builder: (BuildContext context) => dialogWidget(
                  context, "برای خروج از بازی مطمئن هستید ؟", () => exit(0),
                  () {
                Navigator.pop(context);
              }));
    }

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
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewGame()));
                },
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
                        svg: ("assets/icon_music.svg"),
                        size: mediumSize(context),
                      ),
                    ),
                    SizedBox(
                      height: fullWidth(context) / 6.9,
                      width: fullWidth(context) / 6.9,
                      child: NeuButton(
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewWord()));
                        },
                        svg: ("assets/icon_add_word.svg"),
                        size: mediumSize(context),
                      ),
                    ),
                    SizedBox(
                      height: fullWidth(context) / 6.9,
                      width: fullWidth(context) / 6.9,
                      child: NeuButton(
                        () {
                          exitDialog();
                        },
                        svg: ("assets/power_icon.svg"),
                        size: mediumSize(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment(-0.78, 0.67),
                child: SizedBox(
                  height: fullWidth(context) / 6.9,
                  width: fullWidth(context) / 6.9,
                ))
          ],
        ),
      ),
    );
  }
}
