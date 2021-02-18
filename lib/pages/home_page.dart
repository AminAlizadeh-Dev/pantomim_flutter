import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: appTheme(context).accentColor,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
