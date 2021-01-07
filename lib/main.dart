
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//        statusBarColor: ,
        statusBarIconBrightness: Brightness.light
    ));

    return MaterialApp(
      title: 'Pantomim App',
//      theme: ThemeData(
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}