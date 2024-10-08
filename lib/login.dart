import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xuberance22/registration.dart';
import '../pages/events2.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return RegistrationList(FirebaseAuth.instance.currentUser!.email);
              } else {
                return Scrollbar(
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
                          SizedBox(height: 0.03*MediaQuery.of(context).size.height),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: IconButton(onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Events2()));
                                },
                                    icon:Icon(Icons.arrow_back,
                                      size: 30,
                                      color: Colors.white,) ),
                              ),
                              Text("LOGIN", style: TextStyle(fontFamily: "Xavier2", color: Colors.white, fontSize: 0.03*MediaQuery.of(context).size.width)),
                              Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: IconButton(onPressed: (){
                                  launchUrl(Uri.parse("https://youtu.be/dQw4w9WgXcQ"));
                                },
                                    icon:Icon(Icons.arrow_back,
                                      size: 30,
                                      color: Colors.transparent,) ),
                              ),
                            ]
                          ),
                          SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
                          SizedBox(
                              width: 0.6 * MediaQuery.of(context).size.width,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "E-Mail",
                                  hintStyle: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white, width: 2.0),
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
                                style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
                              )),
                          SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                          SizedBox(
                              width: 0.6 * MediaQuery.of(context).size.width,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white, width: 2.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 3, 12, 34),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(255, 3, 12, 34),
                                        width: 2.0),

                                  ),
                                ),
                                style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),
                                obscureText: true,
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                              )),
                          SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                          SizedBox(
                            width: 0.25*MediaQuery.of(context).size.width,
                            height: 0.1*MediaQuery.of(context).size.height,
                            child: ElevatedButton(
                                onPressed: () {
                                  SignIn();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromRGBO(3, 12, 34, 1),
                                ),
                                child: Text("Login", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1'),)),
                          ),
                        ],
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
