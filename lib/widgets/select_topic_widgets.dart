import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/models/topic_model.dart';
import 'package:pantomim_flutter/pages/start_game_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget selectTopicWidgets(Topic topicName,BuildContext context) {
  var theme = Theme.of(context);
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: largeSize(context),
      vertical: mediumSize(context),
    ),
    width: fullWidth(context),
    height: fullHeight(context) / 8,
    child: Stack(
      overflow: Overflow.visible,
      children: [
        Positioned.fill(
            child: Neumorphic(
          style: NeumorphicStyle(
              depth: 5.5,
              intensity: 14,
              color: AppColors.accentColor,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(12),
              )),
          child: Container(
            margin: EdgeInsets.only(right: largeSize(context)),
            child: Row(
              children: [
                Positioned(
                  bottom: 0,
                  top: 0,
                  right: xSmallSize(context),
                  child: Text(
                    topicName.topic,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.subtitle2,
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                )
              ],
            ),
          ),
        )),
        Positioned(
          left: fullHeight(context) / 38,
          top: 0,
          bottom: 0,
          child: NeumorphicButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartGamePage()));
            },
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Center(
              child: Text(
                "6",
                textAlign: TextAlign.center,
                style: theme.textTheme.subtitle2,
              ),
            ),
          ),
        ),
        Positioned(
          left: fullHeight(context) / 8,
          top: 0,
          bottom: 0,
          child: NeumorphicButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartGamePage()));

            },
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Center(
              child: Text(
                "4",
                textAlign: TextAlign.center,
                style: theme.textTheme.subtitle2,
              ),
            ),
          ),
        ),
        Positioned(
          left: fullHeight(context) / 4.5,
          top: 0,
          bottom: 0,
          child: NeumorphicButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartGamePage()));

            },
            style: NeumorphicStyle(
              color: appTheme(context).accentColor,
              depth: 4,
              intensity: 8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: Center(
              child: Text("2",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.subtitle2),
            ),
          ),
        ),
      ],
    ),
  );
}
