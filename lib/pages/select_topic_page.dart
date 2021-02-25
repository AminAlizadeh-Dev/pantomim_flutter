import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/local_data.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/dialog_widgets.dart';
import 'package:pantomim_flutter/widgets/select_topic_widgets.dart';

class SelectTopic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SelectTopicState();
}

class SelectTopicState extends State<SelectTopic> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Future<bool> _willPopCallback() async {
      closeGameDialog(context);
      return false;
    }

    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: NeumorphicTheme.accentColor(context),
          appBar: AppBar(
            leading: SizedBox(),
            elevation: 0,
            centerTitle: true,
            title: Text(
              "انتخاب موضوع",
              style: theme.textTheme.headline3
                  .copyWith(fontSize: headline3Size(context) / 1.4),
            ),
          ),
          body: Container(
            height: fullHeight(context) / 1,
            width: fullWidth(context),
            child: ListView.builder(
              addAutomaticKeepAlives: true,
              scrollDirection: Axis.vertical,
              itemCount: topicData().length,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  selectTopicWidgets(topicData()[index], context),
            ),
          ),
        ),
      ),
    );
  }
}
