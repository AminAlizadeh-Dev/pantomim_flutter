import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('idle'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xffecf2f3),
        statusBarIconBrightness: Brightness.dark));
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffecf2f3),
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
                    style: theme.textTheme.headline3.copyWith(
                        fontFamily: "aviny",
                        fontSize: largeSize(context) / 1.1)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: smallSize(context)),
                child: Text("Version.0.0.1",
                    style:
                        theme.textTheme.caption.copyWith(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
