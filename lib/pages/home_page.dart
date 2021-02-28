import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/pages/new_game_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> with WidgetsBindingObserver {
  final assetsAudioPlayer = new AssetsAudioPlayer();

  void initState() {
    assetsAudioPlayer.open(
      Audio("assets/audios/music.mp3"),
    );

    if (assetsAudioPlayer.isPlaying.value) {
      assetsAudioPlayer.pause();
      assetsAudioPlayer.play();
    }
    assetsAudioPlayer.setLoopMode(LoopMode.single);

    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      assetsAudioPlayer.pause();
    }

    if (state == AppLifecycleState.inactive) {
      assetsAudioPlayer.pause();

      print(AppLifecycleState.inactive);
    }

    if (state == AppLifecycleState.detached) {
      print(AppLifecycleState.detached);
      assetsAudioPlayer.pause();
    }
    if (state == AppLifecycleState.resumed) {
      if (!assetsAudioPlayer.isPlaying.value) {
        assetsAudioPlayer.play();
        assetsAudioPlayer.setLoopMode(LoopMode.single);
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    var theme = Theme.of(context);
    return SafeArea(
      top: false,
      bottom: true,
      child: NeumorphicApp(
        debugShowCheckedModeBanner: false,
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: appTheme(context).accentColor,
            body: Stack(
              children: [
                Container(
                  width: fullWidth(context),
                  height: fullHeight(context),
                  child: Image.asset(
                    "assets/background.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: standardSize(context),
                        top: largeSize(context) / 0.6),
                    child: SizedBox(
                      height: fullWidth(context) / 8.2,
                      width: fullWidth(context) / 8.2,
                      child: NeumorphicButton(
                        padding: EdgeInsets.all(0),
                        style: NeumorphicStyle(
                            depth: 4,
                            intensity: 8,
                            color: appTheme(context).accentColor),
                        child: Lottie.asset(
                          "assets/menu_icon.json",
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: largeSize(context) / 0.55),
                    child: Text("ادا بــــــازی",
                        style: theme.textTheme.headline3.copyWith(
                            fontFamily: "aviny",
                            fontSize: largeSize(context) / 1.1)),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: fullHeight(context) / 2.4,
                    width: fullWidth(context) / 2.4,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewGame()));
                        },
                        child: Lottie.asset("assets/play.json")),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: standardSize(context)),
                    child: SizedBox(
                      width: fullWidth(context) / 1.65,
                      height: fullHeight(context) / 6,
                      child: NeumorphicButton(
                        onPressed: () {},
                        style: NeumorphicStyle(
                            color: appTheme(context).accentColor,
                            depth: 4,
                            intensity: 6),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(xxSmallSize(context)),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://image.freepik.com/free-vector/space-game-background-neon-night-alien-landscape_107791-1624.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ))),
                        padding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.62, 0.64),
                  child: NeumorphicButton(
                    padding: EdgeInsets.all(5),
                    onPressed: () {},
                    style: NeumorphicStyle(
                        color: AppColors.accentColor,
                        intensity: 1.2,
                        depth: 4,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(largeSize(context)))),
                    child: SvgPicture.asset(
                      "assets/close_small_icon.svg",
                      color: Color(0xffD32F2F),
                      width: smallSize(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
