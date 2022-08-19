import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/sponsors.dart';
import 'pages/about_us.dart';
import 'pages/team2.dart';
import 'pages/events.dart';
import 'pages/schedule.dart';
void main() {
  runApp( MaterialApp(
        initialRoute: '/',
        routes:{
          '/' : (context) => const Home(),
          '/sponsors' : (context) => const Sponsors(),
          '/about_us' : (context) => const AboutUs(),
          '/team' : (context) => const Team(),
          '/events' : (context) => const Events(),
          '/schedule' : (context) => const Schedule(),



        }
  ));
}

