// import 'package:flutter/material.dart';
//
// import 'package:xuberence22/schedule1.dart';
// import 'package:xuberence22/schedule2.dart';
// import 'package:xuberence22/schedule3.dart';
// import 'package:xuberence22/OnStageEvent.dart';
// import 'package:xuberence22/OffStageEvent.dart';
// import 'package:xuberence22/FieldEvent.dart';
// void main() => runApp(MaterialApp(
//   home: OnStage(),
//   routes: {
//     '/onstage': (context) => OnStage(),
//     '/offstage': (context) => OffStage(),
//     '/field': (context) => Field(),
//   },
// ));
import 'package:flutter/material.dart';

import 'package:xuberence22/schedule1.dart';
import 'package:xuberence22/schedule2.dart';
import 'package:xuberence22/schedule3.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/day1',
  routes: {
    '/day1': (context) => Day1(),
    '/day2': (context) => Day2(),
    '/day3': (context) => Day3(),
  },
));



