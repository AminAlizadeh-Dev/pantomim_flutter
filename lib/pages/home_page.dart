import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: appTheme(context).accentColor,
          body: Stack(
            children: [
              Positioned(
                bottom: fullWidth(context) / 1.5,
                left: 0,
                right: 0,
                child: Container(
                    width: fullWidth(context) / 2.4,
                    height: fullWidth(context) / 2.4,
                    child: NeumorphicButton(
                      onPressed: () {},
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          depth: 3,
                          intensity: 5,
                          color: appTheme(context).accentColor),
                      child: Image.asset('assets/play_icon.svg'),
                    )),
              ),
              Positioned(
                  top: 0,
                  left: fullWidth(context) / 3.3,
                  right: fullWidth(context) / 3.3,
                  bottom: fullWidth(context) / 0.97,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.circle(),
                        depth: 1.5,
                        intensity: 2,
                        color: appTheme(context).accentColor),
                  )),
              Positioned(
                  top: fullHeight(context) / 12,
                  left: 0,
                  right: 0,
                  child: Container(
                      width: fullWidth(context) / 2.28,
                      height: fullWidth(context) / 2.28,
                      child: Lottie.asset('assets/clown_home.json'))),
              Positioned(
                  top: fullWidth(context)/0.7,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Image.asset('assets/txt_logo.png')),
              Align(
                alignment: Alignment(0.85,0.9),
                child: SizedBox(width: fullWidth(context)/7,height: fullWidth(context)/7,child: NeuButton((){},icon: Icons.menu,)),
              )
            ],
          ),
        ));
  }
}
