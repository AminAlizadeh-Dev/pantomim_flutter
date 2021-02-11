import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

class NeuButton extends StatelessWidget {
  Function onPress;
  String title;
  IconData icon;
  Color color;
  TextAlign align;
  String svg;

  NeuButton(this.onPress,
      {this.icon,
      this.svg,
      this.title,
      this.align: TextAlign.center,
      this.color});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: onPress,
      style: NeumorphicStyle(
          color: AppColors.accentColor,
          intensity: 1.2,
          depth: 4,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12))),
      child: childNeuButton(context),
    );
  }

  Widget childNeuButton(BuildContext context) {
    if (title != null) {
      return Text(
        title,
        textAlign: align,
        style: TextStyle(
          color: color,
        ),
      );
    } else if (icon != null) {
      return Icon(
        icon,
        color: appTheme(context).baseColor,
        size: fullWidth(context) / 18.5,
      );
    } else {
      return SizedBox(
        width: fullWidth(context) / 15,
        height: fullHeight(context) / 20,
        child: SvgPicture.asset(
          svg,
          alignment: Alignment.center,
          color: Color(0xffF57C00),
        ),
      );
    }
  }
}
