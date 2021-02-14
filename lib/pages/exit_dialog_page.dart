import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';

class ExitDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: NeumorphicTheme.accentColor(context),
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: fullWidth(context) / 1.3,
            height: fullWidth(context) / 2.5,
            child: Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 10,
                lightSource: LightSource.topLeft,
                color: AppColors.accentColor,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, -0.05),
          child: Container(
              // alignment: Alignment.center,
              child: Text(
            "برای خروج و بازگـشــت \n به صفحه اصلی مطمئن هستید ؟",
            style: theme.textTheme.bodyText1
                .copyWith(fontSize: bodyText1Size(context) / 1.2),
            textAlign: TextAlign.center,
          )),
        ),
        // Align(
        //   alignment: Alignment.center,
        //     child: NeuButton(
        //   () {},
        //   title: "بله",
        // ))
      ]),
    );
  }
}
