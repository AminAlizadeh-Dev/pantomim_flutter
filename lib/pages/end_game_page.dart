import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class EndGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EndGameState();
}

class EndGameState extends State<EndGamePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: appTheme(context).accentColor,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: xlargeSize(context),
                ),
                width: fullWidth(context),
                height: fullHeight(context) / 7,
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
                              intensity: 10,
                              boxShape: NeumorphicBoxShape.stadium()),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      top: 0,
                      left: -10,
                      child: Transform.rotate(
                        angle: -0.3,
                        child: Neumorphic(
                          padding: EdgeInsets.all(7),
                          style: NeumorphicStyle(
                              color: appTheme(context).accentColor,
                              depth: 4,
                              intensity: 10,
                              boxShape: NeumorphicBoxShape.circle()),
                          child: Image.asset("assets/happy.png"),
                        ),
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
                              margin: EdgeInsets.only(top: smallSize(context)),
                              child: Center(
                                child: Text(
                                  "پــایان مسابقه",
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.subtitle2.copyWith(
                                      color: Color(0xff388E3C),
                                      fontSize: fullWidth(context) / 12,
                                      height: 1),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Text(
                                  "بریم برای دیدن نتـایج !",
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyText2.copyWith(
                                    color: Color(0xff388E3C),
                                  ),
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
      ),
    );
  }
}
