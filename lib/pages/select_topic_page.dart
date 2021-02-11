import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/widgets/neu_app_bar.dart';
import 'package:pantomim_flutter/widgets/select_topic_widgets.dart';

class SelectTopic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SelectTopicState();
}

class SelectTopicState extends State<SelectTopic> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: NeumorphicTheme.accentColor(context),
        appBar: neuAppbar(context, "انتخاب موضوع"),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              selectTopicWidgets(context, "تکنولوژی"),
              selectTopicWidgets(context, "سریال"),
              selectTopicWidgets(context, "ورزش"),
              selectTopicWidgets(context, "سینما"),
              selectTopicWidgets(context, "ادبیات"),
            ],
          ),
        ),
      ),
    );
  }
}
