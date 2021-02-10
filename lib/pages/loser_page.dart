import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoserPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoserPageState();
}

class LoserPageState extends State<LoserPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        child: Neumorphic(
          style: NeumorphicStyle(

          ),
        ),
      ),
    );
  }
}
