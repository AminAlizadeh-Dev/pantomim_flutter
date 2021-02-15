import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';
import 'package:pantomim_flutter/widgets/role_box.dart';

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DialogPageState();
}

class DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: appTheme(context).accentColor,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: fullWidth(context),
            height: fullHeight(context),
            child: Stack(
              children: [
                Positioned(
                  top: fullWidth(context) / 4.5,
                  right: standardSize(context),
                  left: standardSize(context),
                  bottom: xlargeSize(context),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(standardSize(context))),
                      color: appTheme(context).accentColor,
                      depth: 8,
                      surfaceIntensity: 5,
                      intensity: 2,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: fullWidth(context) / 10.2,
                          bottom: fullWidth(context) / 14),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: smallSize(context),
                              horizontal: xxSmallSize(context)),
                          child: Column(
                            children: [
                            roleBox(context, 'میتوانید یک نفر را به عنوان ناظر بی طرف \nبرای داوری انتخاب کنید',
                            'assets/thick_icon.svg',),
                              roleBox(context, 'میتوانید یک نفر را به عنوان ناظر بی طرف \nبرای داوری انتخاب کنید',
                                'assets/thick_icon.svg',),
                              roleBox(context, 'میتوانید یک نفر را به عنوان ناظر بی طرف \nبرای داوری انتخاب کنید',
                                'assets/thick_icon.svg',),
                              roleBox(context, 'میتوانید یک نفر را به عنوان ناظر بی طرف \nبرای داوری انتخاب کنید',
                                'assets/thick_icon.svg',),
                              roleBox(context, 'میتوانید یک نفر را به عنوان ناظر بی طرف \nبرای داوری انتخاب کنید',
                                'assets/thick_icon.svg',),
                              roleBox(context, 'میتوانید یک نفر را به عنوان ناظر بی طرف \nبرای داوری انتخاب کنید',
                                'assets/thick_icon.svg',),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, -0.88),
                  child: Container(
                    width: fullWidth(context) / 1.5,
                    height: xlargeSize(context),
                    margin: EdgeInsets.only(
                        top: standardSize(context),
                        bottom: mediumSize(context)),
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
                        child: Text(
                          'قوانین',
                          textAlign: TextAlign.center,
                          style: appTheme(context).textTheme.headline3.copyWith(
                              color: appTheme(context).baseColor,
                              fontSize: fullWidth(context) / 11),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
