import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class LoserPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoserState();
}

class LoserState extends State<LoserPage> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _willPopCallback() async {
      return false;
    }

    var theme = Theme.of(context);
    return SafeArea(
      top: false,
      bottom: true,
      child: WillPopScope(
        onWillPop: _willPopCallback,
        child: Directionality(
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
                    height: fullHeight(context) / 7.5,
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
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                color: appTheme(context).accentColor,
                                depth: 4,
                                intensity: 10,
                                boxShape: NeumorphicBoxShape.circle()),
                            child: Image.asset("assets/Sad.png"),
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
                                  child: Center(
                                    child: Text(
                                      "اندوه بیکران !",
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.subtitle2.copyWith(
                                          color: Color(0xffd81010),
                                          height: 1,
                                          fontSize: fullWidth(context) / 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "از مسابقه حذف شدین",
                                    style: theme.textTheme.bodyText2.copyWith(
                                      color: Color(0xffd81010),
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
                      width: fullWidth(context) / 7,
                      height: fullWidth(context) / 7,
                      child: NeuButton(
                        () {},
                        svg: ("assets/icon_next.svg"),
                        colorSvg: AppColors.primaryColor,
                        size: mediumSize(context) / 1.15,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
