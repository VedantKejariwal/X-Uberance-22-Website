import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xuberance22/registration.dart';

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
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
        ),
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return RegistrationList(FirebaseAuth.instance.currentUser!.uid);
              } else {
                return Column(
                  children: [
                    SizedBox(height: 0.3 * MediaQuery.of(context).size.height),
                    SizedBox(
                        width: 0.6 * MediaQuery.of(context).size.width,
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                        )),
                    SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                    SizedBox(
                        width: 0.6 * MediaQuery.of(context).size.width,
                        child: TextFormField(
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                        )),
                    SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                    ElevatedButton(
                        onPressed: () {
                          SignIn();
                        },
                        child: Text("Login")),
                  ],
                );
              }
            }));
  }

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
  }
}
