import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/pages/new_game/new_game_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget bottomSheetWidget(BuildContext context,Function onPress) {
  return Container(
    decoration: BoxDecoration(
        color: appTheme(context).accentColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(largeSize(context)),
            topLeft: Radius.circular(largeSize(context)))),
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.only(bottom: mediumSize(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: standardSize(context),
              ),
              height: xxSmallSize(context),
              width: largeSize(context),
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(largeSize(context))),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: largeSize(context), bottom: largeSize(context)),
              child: Text('نوع مسابقه :',
                  style: appTheme(context).textTheme.subtitle1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                gameType(context, 'عادی', onPress),
                gameType(context, 'سرعتی', onPress),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: largeSize(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  gameType(context, 'سوالات  5  ثانیه ای', onPress),
//                gameType(context, 'به زودی...'),
                  SizedBox(
                    width: fullWidth(context) / 3,
                    height: fullWidth(context) / 6.5,
                    child: NeumorphicButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewGame()));
                      },
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(mediumSize(context))),
                        color: appTheme(context).accentColor,
                        depth: 3,
                        intensity: 6,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'به زودی ...',
                          style: appTheme(context).textTheme.headline4.copyWith(
                              fontFamily: 'aviny',
                              color: appTheme(context).variantColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget gameType(BuildContext context, String type, Function onPress) {
  return SizedBox(
    width: fullWidth(context) / 3,
    height: fullWidth(context) / 6.5,
    child: NeumorphicButton(
      onPressed: onPress,
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(mediumSize(context))),
        color: appTheme(context).accentColor,
        depth: 3,
        intensity: 6,
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          type,
          style: appTheme(context)
              .textTheme
              .headline4
              .copyWith(fontFamily: 'aviny', color: Colors.grey.shade700),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
