import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pantomim_flutter/pages/guide_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/bottom_sheet_widget.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/num_picker_buttons.dart';
import 'package:pantomim_flutter/widgets/team_name_picker.dart';
import 'package:pantomim_flutter/widgets/word_detail_widget.dart';

class NewGame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewGameState();
}

class NewGameState extends State<NewGame> {
  ScrollController _rrectController =
      ScrollController(initialScrollOffset: 1.0);

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
              title: NeumorphicText(
                'شروع مسابقه جدید',
                textAlign: TextAlign.center,
                style: NeumorphicStyle(
                  depth: 4, //cu// stomize depth here
                  color: appTheme(context).baseColor, //customize color here
                ),
                textStyle: NeumorphicTextStyle(
                  fontFamily: 'kalameh',
                  fontSize: fullWidth(context) / 14, //// customize size here
                ),
              ),
            ),
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: fullWidth(context) / 1.1,
                      height: fullHeight(context) / 1.4,
                      margin: EdgeInsets.only(
                          bottom: standardSize(context), top: smallSize(context)),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(xxSmallSize(context))),
                            depth: 2,
                            intensity: 4,
                            color: appTheme(context).accentColor),
                        child: DraggableScrollbar.rrect(
                            backgroundColor: AppColors.primaryColor,
                            alwaysVisibleScrollThumb: true,
                            controller: _rrectController,
                            child: ListView(
                              controller: _rrectController,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(top: smallSize(context)),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Text(
                                          "نوع مسابقه:",
                                          style: TextStyle(
                                            color: appTheme(context)
                                                .defaultTextColor,
                                            // customize color here
                                            fontFamily: "aviny",
                                            fontSize: subTitleSize(context),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Material(
                                        color: Colors.transparent,
                                        child: Ink(
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                showModalBottomSheet<void>(
                                                    context: context,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    builder: (BuildContext
                                                            context) =>
                                                        bottomSheetWidget(context, () {
                                                          Navigator.push(context,
                                                              MaterialPageRoute(builder: (context) => NewGame()));
                                                        }));
                                              });
                                            },
                                            child: Container(
                                              width: fullWidth(context) / 1.5,
                                              height: fullHeight(context) / 10,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: mediumSize(context)),
                                              child: Neumorphic(
                                                style: NeumorphicStyle(
                                                  color:
                                                      appTheme(context).accentColor,
                                                  depth: 8,
                                                  intensity: 16,
                                                  boxShape:
                                                      NeumorphicBoxShape.roundRect(
                                                          BorderRadius.circular(
                                                              12)),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/arrow_down_icon.svg',
                                                            height:
                                                                smallSize(context),
                                                            width:
                                                                smallSize(context),
                                                          ),
//                              NeumorphicIcon(Icons.keyboard_arrow_down,size: (context),),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                right: mediumSize(
                                                                    context)),
                                                            child: Center(
                                                              child: NeumorphicText(
                                                                "انتخاب کن",
                                                                textStyle:
                                                                    NeumorphicTextStyle(
                                                                  fontFamily:
                                                                      "aviny",
                                                                  height: 1.8,
                                                                  fontSize: fullWidth(
                                                                          context) /
                                                                      23,
                                                                ),
                                                                textAlign: TextAlign
                                                                    .center,
                                                                style:
                                                                    NeumorphicStyle(
                                                                        color: Colors
                                                                            .black),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 1, child: SizedBox())
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "تعداد تیم ها:",
                                          style: TextStyle(
                                            color: appTheme(context)
                                                .defaultTextColor,
                                            // customize color here
                                            fontFamily: "aviny",
                                            fontSize: subTitleSize(context),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      numPicker(context, '4'),
                                      Center(
                                        child: Text(
                                          "نام تیم ها:",
                                          style: TextStyle(
                                            color: appTheme(context)
                                                .defaultTextColor,
                                            // customize color here
                                            fontFamily: "aviny",
                                            fontSize: subTitleSize(context),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: smallSize(context)),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                teamName(context, 'تیم اول'),
                                                teamName(context, 'تیم دوم'),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: mediumSize(context)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  teamName(context, 'تیم سوم'),
                                                  teamName(context, 'تیم چهارم'),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                teamName(context, 'تیم پنجم'),
                                                teamName(context, 'تیم ششم'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "تعداد دور ها:",
                                          style: TextStyle(
                                            color: appTheme(context)
                                                .defaultTextColor,
                                            // customize color here
                                            fontFamily: "aviny",
                                            fontSize: subTitleSize(context),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      numPicker(context, '6'),
                                      Center(
                                        child: Text(
                                          "زمان مسابقه:",
                                          style: TextStyle(
                                            color: appTheme(context)
                                                .defaultTextColor,
                                            // customize color here
                                            fontFamily: "aviny",
                                            fontSize: subTitleSize(context),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: mediumSize(context)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: fullWidth(context) / 2.7,
                                              height: fullWidth(context) / 8,
                                              child: NeumorphicButton(
                                                onPressed: () {},
                                                style: NeumorphicStyle(
                                                    depth: 5,
                                                    intensity: 10,
                                                    color: appTheme(context)
                                                        .accentColor),
                                                child: Center(
                                                  child: NeumorphicText(
                                                    "خودکار",
                                                    textStyle:
                                                        NeumorphicTextStyle(
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
                                            ),
                                            Container(
                                              width: fullWidth(context) / 2.7,
                                              height: fullWidth(context) / 8,
                                              child: NeumorphicButton(
                                                onPressed: () {},
                                                style: NeumorphicStyle(
                                                    depth: 5,
                                                    intensity: 10,
                                                    color: appTheme(context)
                                                        .accentColor),
                                                child: Center(
                                                  child: NeumorphicText(
                                                    "دستی",
                                                    textStyle:
                                                        NeumorphicTextStyle(
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "زمان دستی(  ثانیه  ):",
                                          style: TextStyle(
                                            color: appTheme(context)
                                                .defaultTextColor,
                                            // customize color here
                                            fontFamily: "aviny",
                                            fontSize: subTitleSize(context),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      numPicker(context, '60'),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: mediumSize(context)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: fullWidth(context) / 7,
                            width: fullWidth(context) / 7,
                            child: NeuButton(
                              () {},
                              icon: Icons.arrow_forward_ios_rounded,
                            ),
                          ),
                          Container(
                            height: fullWidth(context) / 8,
                            width: fullWidth(context) / 8,
                            child: NeuButton(
                              () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => GuidePage()));
                              },
                              svg: 'assets/questions_icon.svg',
                            ),
                          ),
                          SizedBox(
                            height: fullWidth(context) / 7,
                            width: fullWidth(context) / 7,
                            child: NeuButton(
                              () {},
                              icon: Icons.arrow_back_ios_rounded,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
