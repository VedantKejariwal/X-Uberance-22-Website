import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((value) => runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Home(),)));
}