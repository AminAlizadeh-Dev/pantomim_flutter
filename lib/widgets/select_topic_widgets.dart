import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/local_data.dart';
import 'package:pantomim_flutter/models/topic_model.dart';
import 'package:pantomim_flutter/pages/start_game/start_game_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

Widget selectTopicWidgets(Topic topicBox, BuildContext context) {
  var theme = Theme.of(context);
  return Neumorphic(
    padding: EdgeInsets.all(standardSize(context)),
    margin: EdgeInsets.symmetric(
      horizontal: largeSize(context),
      vertical: mediumSize(context),
    ),
    style: NeumorphicStyle(
        depth: 5.5,
        intensity: 14,
        color: AppColors.accentColor,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.circular(12),
        )),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Text(
              topicBox.topic,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.subtitle2,
            ),
          ),
        ),

        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.only(right: standardSize(context)),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NeumorphicButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartGamePage()));
                  },
                  style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 4,
                    intensity: 8,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle2,
                    ),
                  ),
                ),
                NeumorphicButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartGamePage()));
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
                NeumorphicButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StartGamePage()));
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
              ],
            ),
          ),
        )
        // Positioned(
        //   left: fullHeight(context) / 38,
        //   top: 0,
        //   bottom: 0,
        //   child: NeumorphicButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartGamePage()));
        //     },
        //     style: NeumorphicStyle(
        //       color: appTheme(context).accentColor,
        //       depth: 4,
        //       intensity: 8,
        //       boxShape: NeumorphicBoxShape.circle(),
        //     ),
        //     child: Center(
        //       child: Text(
        //         "6",
        //         textAlign: TextAlign.center,
        //         style: theme.textTheme.subtitle2,
        //       ),
        //     ),
        //   ),
        // ),
        // Positioned(
        //   left: fullHeight(context) / 8,
        //   top: 0,
        //   bottom: 0,
        //   child: NeumorphicButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartGamePage()));
        //
        //     },
        //     style: NeumorphicStyle(
        //       color: appTheme(context).accentColor,
        //       depth: 4,
        //       intensity: 8,
        //       boxShape: NeumorphicBoxShape.circle(),
        //     ),
        //     child: Center(
        //       child: Text(
        //         "4",
        //         textAlign: TextAlign.center,
        //         style: theme.textTheme.subtitle2,
        //       ),
        //     ),
        //   ),
        // ),
        // Positioned(
        //   left: fullHeight(context) / 4.5,
        //   top: 0,
        //   bottom: 0,
        //   child: NeumorphicButton(
        //     onPressed: () {
        //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartGamePage()));
        //
        //     },
        //     style: NeumorphicStyle(
        //       color: appTheme(context).accentColor,
        //       depth: 4,
        //       intensity: 8,
        //       boxShape: NeumorphicBoxShape.circle(),
        //     ),
        //     child: Center(
        //       child: Text("2",
        //           textAlign: TextAlign.center,
        //           style: theme.textTheme.subtitle2),
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}
