import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_app_bar.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class NewWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewWordState();
}

class NewWordState extends State<NewWord> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: NeumorphicTheme.accentColor(context),
      appBar: neuAppbar(context, "تعریف واژه جدید"),
      body: Column(
        children: [
          NeumorphicText(
            "واژه",
            style: NeumorphicStyle(
              depth: 4, //cu// stomize depth here
              color: appTheme(context).defaultTextColor, //customize color here
            ),
            textAlign: TextAlign.center,
            textStyle: NeumorphicTextStyle(
              fontFamily: "aviny",
              fontSize: bodyText1Size(context),
            ),
          )
        ],
      ),
    );
  }
}
