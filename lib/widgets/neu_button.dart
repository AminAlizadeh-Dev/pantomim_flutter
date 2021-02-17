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
  Color color , colorSvg;
  TextAlign align;
  String svg;
  double textHeight , size;

  NeuButton(this.onPress,
      {this.icon,
      this.svg,
      this.title,
      this.align: TextAlign.center,
      this.color,
      this.colorSvg,
      this.textHeight : 1,
      this.size : 0});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: EdgeInsets.all(0),
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
      return Center(
        child: Center(
          child: Text(
            title,
            textAlign: align,
            style: appTheme(context).textTheme.bodyText1.copyWith(
              color: color,
              height: textHeight,
            ),
          ),
        ),
      );
    } else if (icon != null) {
      return Icon(
        icon,
        color: appTheme(context).baseColor,
        size: fullWidth(context) / 18.5,
      );
    } else {
      return Container(
        padding: EdgeInsets.all(size),
        child: SvgPicture.asset(
          svg,
          alignment: Alignment.center,
          color: colorSvg,
        ),
      );
    }
  }
}
