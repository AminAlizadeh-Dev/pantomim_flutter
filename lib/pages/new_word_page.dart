import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/neu_app_bar.dart';
import 'package:pantomim_flutter/widgets/neu_button.dart';
import 'package:pantomim_flutter/widgets/point_button.dart';
import 'package:pantomim_flutter/widgets/word_detail_widget.dart';

class NewWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewWordState();
}

class NewWordState extends State<NewWord> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: NeumorphicTheme.accentColor(context),
        appBar: neuAppbar(context, "تعریف واژه جدید"),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: NeumorphicText(
                  ":واژه",
                  style: NeumorphicStyle(
                    depth: 4, //cu// stomize depth here
                    color: appTheme(context)
                        .defaultTextColor, //customize color here
                  ),
                  textAlign: TextAlign.center,
                  textStyle: NeumorphicTextStyle(
                    fontFamily: "aviny",
                    fontSize: subTitleSize(context),
                  ),
                ),
              ),
              Neumorphic(
                padding: EdgeInsets.all(0),
                style: NeumorphicStyle(
                    boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -5,
                    intensity: 10,
                    color: AppColors.accentColor),
                margin: EdgeInsets.symmetric(
                    horizontal: largeSize(context),
                    vertical: xxSmallSize(context)),
                child: NeuTextField(
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "کلمه مورد نظر تو اینجا بنویس",
                      hintStyle: TextStyle(color: Colors.grey)),
                  style: TextStyle(
                      fontSize: fullWidth(context) / 23,
                      fontWeight: FontWeight.w500),
                  keyboardType: TextInputType.text,
                  mouseCursor: MouseCursor.uncontrolled,
                ),
              ),
              Center(
                child: NeumorphicText(
                  ":امتیاز واژه",
                  style: NeumorphicStyle(
                    depth: 4, //cu// stomize depth here
                    color: appTheme(context)
                        .defaultTextColor, //customize color here
                  ),
                  textAlign: TextAlign.center,
                  textStyle: NeumorphicTextStyle(
                    fontFamily: "aviny",
                    fontSize: subTitleSize(context),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: largeSize(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    pointButton(context, "2"),
                    pointButton(context, "4"),
                    pointButton(context, "6"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: mediumSize(context)),
                child: Center(
                  child: NeumorphicText(
                    "واژه هایی که در این بخش تعریف  می کنید به لیست  (  کلمات متن  )\n در قسمت انتخاب موضوع افزوده می شود که برای فعال کردن آن\n .به وارد کردن حداقل 10 کلمه احتیاج دارید",
                    style: NeumorphicStyle(
                      depth: 4, //cu// stomize depth here
                      color: appTheme(context)
                          .defaultTextColor, //customize color here
                    ),
                    textAlign: TextAlign.center,
                    textStyle: NeumorphicTextStyle(
                      fontFamily: "aviny",
                      height: 1.8,
                      fontSize: fullWidth(context) / 22,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: largeSize(context)),
                child: NeumorphicButton(
                  padding: EdgeInsets.symmetric(
                      horizontal: fullWidth(context) / 10, vertical: 0),
                  onPressed: () {},
                  style: NeumorphicStyle(
                    color: appTheme(context).accentColor,
                    depth: 6,
                    intensity: 10,
                    boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  child: NeumorphicText(
                    "ذخیره",
                    textStyle: NeumorphicTextStyle(
                      fontFamily: "aviny",
                      height: 1.8,
                      fontSize: fullWidth(context) / 16,
                    ),
                    textAlign: TextAlign.center,
                    style: NeumorphicStyle(color: Color(0xff388E3C)),
                  ),
                ),
              ),
              wordDetailWidget(context, "پرتقال", "امتیاز 4", "4"),
              wordDetailWidget(context, "پرتقال", "امتیاز 4", "4"),
              wordDetailWidget(context, "پرتقال", "امتیاز 4", "4"),
            ],
          ),
        ),
      ),
    );
  }
}
