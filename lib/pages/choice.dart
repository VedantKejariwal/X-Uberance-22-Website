import 'package:flutter/material.dart';
import '../login.dart';
import 'home.dart';
import 'mobile_home.dart';

class Choice extends StatefulWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Home();
      }
      else {
        return MobileLogin();
      }
    });
  }
}
