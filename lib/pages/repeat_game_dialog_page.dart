import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/widgets/dialog_widget.dart';

class RepeatGameDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: NeumorphicTheme.accentColor(context),
        body: DialogWidget(context , "می خواهید همین مسابقه را تکرار کنید ؟"),
      ),
    );
  }
}