import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/text_guide_widget.dart';

class GuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GuidePageState();
}

class GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: NeumorphicTheme.accentColor(context),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("راهنما", style: theme.textTheme.headline3),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: largeSize(context) / 1.2),
              child: SizedBox(
                height: fullHeight(context) / 1.4,
                width: fullWidth(context) / 1.2,
                child: Neumorphic(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: xSmallSize(context)),
                        child: Center(
                          child: Text(
                            "نوع مسابقه :",
                            style: theme.textTheme.subtitle1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        width: fullWidth(context) / 1.5,
                        height: fullHeight(context) / 15,
                        margin: EdgeInsets.symmetric(vertical: xSmallSize(context)),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            color: appTheme(context).accentColor,
                            depth: 8,
                            intensity: 16,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(12)),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                  child: Text(
                                "انتخاب کن",
                                style: theme.textTheme.bodyText1,
                              )),
                              Container(
                                margin: EdgeInsets.only(right: standardSize(context)),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                    'assets/arrow_down_icon.svg',
                                    height: smallSize(context),
                                    width: smallSize(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextGuideWidget(context),
                      TextGuideWidget(context),
                      TextGuideWidget(context),
                      TextGuideWidget(context),
                    ],
                  ),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(standardSize(context))),
                    depth: 10,
                    lightSource: LightSource.topLeft,
                    color: AppColors.accentColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: largeSize(context) , top: mediumSize(context) / 0.5 , left: largeSize(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: fullWidth(context) / 7,
                    height: fullWidth(context) / 7,
                    child: NeuButton((){} ,
                    icon: Icons.arrow_forward_ios_rounded,
                    ),
                  ),
                  SizedBox(
                    width: fullWidth(context) / 7,
                    height: fullWidth(context) / 7,
                    child: NeuButton((){} ,
                      icon: Icons.arrow_back_ios_rounded,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
