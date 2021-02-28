import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pantomim_flutter/local_data.dart';
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
    return SafeArea(
      top: false,
      bottom: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: NeumorphicTheme.accentColor(context),
          appBar: AppBar(
            elevation: 0,
            leading: SizedBox(),
            centerTitle: true,
            title: Text("راهنما",
                style: theme.textTheme.headline3
                    .copyWith(fontSize: headline3Size(context) / 1.4)),
          ),
          body: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                width: fullWidth(context) / 1.1,
                height: fullHeight(context) / 1.4,
                margin: EdgeInsets.only(
                    bottom: standardSize(context),
                    top: smallSize(context),
                    right: standardSize(context),
                    left: standardSize(context)),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(standardSize(context))),
                      depth: 4,
                      intensity: 7,
                      color: appTheme(context).accentColor),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: smallSize(context), bottom: mediumSize(context)),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: xxSmallSize(context)),
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
                            margin: EdgeInsets.symmetric(
                                vertical: xSmallSize(context)),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                color: appTheme(context).accentColor,
                                depth: 8,
                                intensity: 16,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(12)),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icon_down.svg',
                                          color: AppColors.primaryColor,
                                          height: mediumSize(context),
                                          width: mediumSize(context),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              right: mediumSize(context)),
                                          child: Center(
                                            child: NeumorphicText(
                                              "انتخاب کن",
                                              textStyle: NeumorphicTextStyle(
                                                fontFamily: "aviny",
                                                height: 1.8,
                                                fontSize:
                                                    fullWidth(context) / 23,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: NeumorphicStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(flex: 1, child: SizedBox())
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: smallSize(context),
                                bottom: xxSmallSize(context)),
                            height: fullHeight(context) / 2,
                            width: fullWidth(context),
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              physics: NeverScrollableScrollPhysics(),
                              addAutomaticKeepAlives: true,
                              scrollDirection: Axis.vertical,
                              itemCount: guideType().length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => (textGuideWidget(
                                  guideType()[index], context)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(standardSize(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: fullWidth(context) / 7,
                        height: fullWidth(context) / 7,
                        child: NeuButton(
                          () {},
                          svg: ("assets/icon_next.svg"),
                          colorSvg: AppColors.primaryColor,
                          size: mediumSize(context) / 1.15,
                        ),
                      ),
                      SizedBox(
                        width: fullWidth(context) / 7,
                        height: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            Navigator.pop(context);
                          },
                          svg: ("assets/icon_power.svg"),
                          colorSvg: AppColors.primaryColor,
                          size: mediumSize(context) / 1.15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: largeSize(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
