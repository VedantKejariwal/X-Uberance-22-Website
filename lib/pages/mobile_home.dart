import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xuberance22/registration.dart';
import '../pages/events2.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return RegistrationList(
                    FirebaseAuth.instance.currentUser!.email);
              } else {
                return Scrollbar(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/background.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height:
                                    0.03 * MediaQuery.of(context).size.height),
                            Center(
                                child: Text("X-UBERANCE '22",
                                    style: TextStyle(
                                        fontFamily: "Xavier2",
                                        color: Colors.white,
                                        fontSize: 20))),
                            SizedBox(
                                height:
                                    0.1 * MediaQuery.of(context).size.height),
                            SizedBox(
                                width: 0.6 * MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "E-Mail",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    fillColor: Color.fromARGB(255, 3, 12, 34),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3, 12, 34),
                                          width: 2.0),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      email = value;
                                    });
                                  },
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Xavier3'),
                                )),
                            SizedBox(
                                height:
                                    0.05 * MediaQuery.of(context).size.height),
                            SizedBox(
                                width: 0.6 * MediaQuery.of(context).size.width,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    fillColor: Color.fromARGB(255, 3, 12, 34),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 3, 12, 34),
                                          width: 2.0),
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Xavier3'),
                                  obscureText: true,
                                  onChanged: (value) {
                                    setState(() {
                                      password = value;
                                    });
                                  },
                                )),
                            SizedBox(
                                height:
                                    0.05 * MediaQuery.of(context).size.height),
                            SizedBox(
                              width: 0.25 * MediaQuery.of(context).size.width,
                              height: 0.1 * MediaQuery.of(context).size.height,
                              child: ElevatedButton(
                                  onPressed: () {
                                    SignIn();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(3, 12, 34, 1),
                                  ),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier1'),
                                  )),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Open the website on a desktop for more details!",
                              style: TextStyle(
                                  fontFamily: "Xavier3",
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 1000),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            }));
  }

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => this.widget),
    );
  }
}
