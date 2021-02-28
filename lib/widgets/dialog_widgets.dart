// import 'package:flutter/cupertino.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:pantomim_flutter/theme/app_theme.dart';
// import 'package:pantomim_flutter/theme/colors.dart';
// import 'package:pantomim_flutter/theme/dimense.dart';
//
// import 'neu_button.dart';
//
// Widget dialogWidget(BuildContext context, String title, Function onPressPush,
//     Function onPressClose) {
//  return Material(
//     color: Colors.transparent,
//     child: Stack(children: [
//       Align(
//         alignment: Alignment.center,
//         child: SizedBox(
//           width: fullWidth(context) / 1.2,
//           height: fullWidth(context) / 2,
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(standardSize(context)),
//               color: AppColors.accentColor,
//             ),
//           ),
//         ),
//       ),
//       Align(
//         alignment: Alignment(0, -0.11),
//         child: Container(
//             // alignment: Alignment.center,
//             child: Text(
//           title,
//           style: appTheme(context).textTheme.subtitle1,
//           textAlign: TextAlign.center,
//         )),
//       ),
//       Align(
//           alignment: Alignment(0.65, 0.11),
//           child: Container(
//             width: fullWidth(context) / 6,
//             height: fullWidth(context) / 6,
//             child: NeuButton(
//               onPressPush,
//               svg: "assets/thick_icon.svg",
//               size: smallSize(context),
//               colorSvg: Color(0xff388E3C),
//             ),
//           )),
//       Align(
//           alignment: Alignment(-0.65, 0.11),
//           child: Container(
//             width: fullWidth(context) / 6,
//             height: fullWidth(context) / 6,
//             child: NeuButton(
//               onPressClose,
//               svg: "assets/close_small_icon.svg",
//               size: smallSize(context),
//               colorSvg: Color(0xffD32F2F),
//             ),
//           )),
//     ]),
//   );
// }

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pantomim_flutter/pages/home_page.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

AwesomeDialog closeGameDialog(BuildContext context , {String title : "برای خروج و بازگشت به صفحه اصلی مطمئن هستید؟",Function onPress  }) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.WARNING,
    headerAnimationLoop: false,
    animType: AnimType.SCALE,
    showCloseIcon: false,
    dismissOnTouchOutside: true,
    customHeader: Container(
      width: fullWidth(context) / 3.8,
      height: fullWidth(context) / 3.8,
      child: Lottie.asset("assets/Exclamation_mark.json"),
    ),
    body: Container(
        // alignment: Alignment.center,
        child: Text(title,
      style: appTheme(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
    )),

    btnOk: AnimatedButton(
      buttonTextStyle:
          appTheme(context).textTheme.subtitle1.copyWith(color: Colors.white),
      color: Colors.redAccent,
      isFixedHeight: false,
      pressEvent: onPress != null ? onPress : () {
        Navigator.of(context, rootNavigator: true)?.pop();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      text: "بله",
      borderRadius: BorderRadius.circular(16),
    ),
    btnCancel: AnimatedButton(
      buttonTextStyle:
          appTheme(context).textTheme.subtitle1.copyWith(color: Colors.black),
      isFixedHeight: false,
      pressEvent: () {
        Navigator.of(context, rootNavigator: true)?.pop();
      },
      text: "خیر",
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(16),
    ),

  )..show();
}
