import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/pages/end_game_page.dart';
import 'package:pantomim_flutter/pages/game_page.dart';
import 'package:pantomim_flutter/pages/guide_page.dart';
import 'package:pantomim_flutter/pages/home_page.dart';
import 'package:pantomim_flutter/pages/loser_page.dart';
import 'package:pantomim_flutter/pages/neu_progress_pie_bar.dart';
import 'package:pantomim_flutter/pages/new_game_page.dart';
import 'package:pantomim_flutter/pages/new_word_page.dart';
import 'package:pantomim_flutter/pages/round_page.dart';
import 'package:pantomim_flutter/pages/select_topic_page.dart';
import 'package:pantomim_flutter/pages/speed_score_page.dart';
import 'package:pantomim_flutter/pages/splash_page.dart';
import 'package:pantomim_flutter/pages/start_game_page.dart';
import 'package:pantomim_flutter/pages/sum_points_page.dart';
import 'package:pantomim_flutter/pages/winner_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';

import 'pages/neu_progress_painter.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppColors.accentColor,
        statusBarIconBrightness: Brightness.dark));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Pantomime',
      theme: appTheme(context),
      home: HomePage(),
    );
  }
}
