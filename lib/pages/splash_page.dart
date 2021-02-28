import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pantomim_flutter/pages/home_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:rive/rive.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<SplashPage> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override
  void initState() {
    rootBundle.load('assets/splash_anim.riv').then(
      (data) async {
        final file = RiveFile();

        if (file.import(data)) {
          final artboard = file.mainArtboard;

          artboard.addController(_controller = SimpleAnimation('idle'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade,
              child: HomePage(),
              duration: Duration(milliseconds: 2000)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: appTheme(context).accentColor,
          body: Stack(
            children: [
              Center(
                child: Container(
                  height: fullWidth(context) / 1.4,
                  width: fullWidth(context) / 1.4,
                  child: _riveArtboard == null
                      ? const SizedBox()
                      : Rive(artboard: _riveArtboard),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: largeSize(context)),
                  child: Text("ادا بــــــازی",
                      style: appTheme(context).textTheme.headline3.copyWith(
                          fontFamily: "aviny",
                          fontSize: largeSize(context) / 1.1)),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: smallSize(context)),
                  child: Text("Version.0.0.1",
                      style: appTheme(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.grey)),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.76),
                child: Container(
                  width: fullWidth(context) / 5.8,
                  child: Lottie.asset("assets/loading.json"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
