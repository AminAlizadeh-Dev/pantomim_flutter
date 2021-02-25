import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pantomim_flutter/pages/home_page.dart';
import 'package:pantomim_flutter/pages/select_topic_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/dialog_widget.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/role_box.dart';
import 'package:pantomim_flutter/widgets/team_details_box.dart';

import '../local_data.dart';

void roleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Material(
        color: Colors.transparent,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Positioned(
                top: fullWidth(context) / 4.5,
                right: standardSize(context),
                left: standardSize(context),
                bottom: xxLargeSize(context),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(standardSize(context)),
                    color: appTheme(context).accentColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: fullWidth(context) / 23,
                        bottom: xxSmallSize(context)),
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: smallSize(context),
                            horizontal: xxSmallSize(context)),
                        child:
                        ListView.builder(
                          padding: EdgeInsets.all(0),
                          physics: BouncingScrollPhysics(),
                          addAutomaticKeepAlives: true,
                          scrollDirection: Axis.vertical,
                          itemCount: roleData().length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                          (roleBox(roleData()[index], context)),
                        ),
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: Alignment(-0.78, -0.8),
                child:  GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: SvgPicture.asset(
                    "assets/close_small_icon.svg",
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0, -0.88),
                child: Container(
                  width: fullWidth(context) / 1.8,
                  height: xlargeSize(context) / 1.2,
                  margin: EdgeInsets.only(
                      top: standardSize(context),
                      bottom: mediumSize(context)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius:
                            BorderRadius.circular(fullWidth(context) / 1),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xffADADB2),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0.0, 1))
                        ]),
                    child: Container(
                      alignment: Alignment.center,
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          'قـــــوانین',
                          textAlign: TextAlign.center,
                          style: appTheme(context)
                              .textTheme
                              .headline3
                              .copyWith(
                                  color: appTheme(context).baseColor,
                                  fontSize: fullWidth(context) / 11),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

void exitDialog(BuildContext context) {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) => dialogWidget(
              context, "برای خروج و بازگـشــت \n به صفحه اصلی مطمئن هستید ؟",
              () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }, () {
            Navigator.pop(context);
          }));
}

class RoundPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RoundPageState();
}

class RoundPageState extends State<RoundPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: appTheme(context).accentColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: fullWidth(context),
          height: fullHeight(context),
//          margin: EdgeInsets.only(top: fullWidth(context) / 10.5),
          child: Stack(
            children: [
              Positioned(
                top: fullWidth(context) / 3.4,
                right: standardSize(context),
                left: standardSize(context),
                child: Neumorphic(
                  padding: EdgeInsets.only(bottom: smallSize(context)),
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(standardSize(context))),
                    color: appTheme(context).accentColor,
                    depth: -7,
                    intensity: 6,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: largeSize(context),
                        bottom: 0),
                    height: fullHeight(context) / 2, width: fullWidth(context),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(0),
                      addAutomaticKeepAlives: true,
                      scrollDirection: Axis.vertical,
                      itemCount: teamData().length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          (teamDetailBox(teamData()[index], context)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.0,-0.81),
                child: Container(
                  width: fullWidth(context) / 1.7,
                  height: xlargeSize(context),
                  margin: EdgeInsets.only(
                      top: standardSize(context), bottom: mediumSize(context)),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: 1.75,
                        intensity: 3.5,
                        color: AppColors.accentColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(fullWidth(context) / 1),
                        )),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("دور 1 از 3",
                          style: theme.textTheme.headline3.copyWith(
                              fontSize: headline3Size(context) / 1.4)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, 0.94),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: fullWidth(context) / 7,
                        width: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            exitDialog(context);
                          },
                          svg: 'assets/power_icon.svg',
                          size: smallSize(context),
                        ),
                      ),
                      SizedBox(
                        height: fullWidth(context) / 7,
                        width: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            roleDialog(context);
                          },
                          svg: 'assets/role_icon.svg',
                          size: smallSize(context),
                        ),
                      ),
                      SizedBox(
                        height: fullWidth(context) / 7,
                        width: fullWidth(context) / 7,
                        child: NeuButton(
                          () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectTopic()));
                          },
                          svg: 'assets/play_icon.svg',
                          size: smallSize(context),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
