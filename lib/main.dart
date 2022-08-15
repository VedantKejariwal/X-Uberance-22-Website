import 'package:flutter/material.dart';
import 'package:xmun/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "X-MUN '22",
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(
                "Sorry! We are experiencing some technical issues, check back in sometime!");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return HomePage();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
