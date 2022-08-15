import 'package:flutter/material.dart';
import 'dart:html' as html;

class SecretariatMobile extends StatefulWidget {
  const SecretariatMobile({Key? key}) : super(key: key);

  @override
  State<SecretariatMobile> createState() => _SecretariatMobileState();
}

class _SecretariatMobileState extends State<SecretariatMobile> {
  List<String> names = [
    "Aritra Mookherjee",
    "Akash Roy",
    "Gourab Saha",
    "Hitansh Agarwal",
    "Rishab Mookherjee",
    "Ojas Jha",
    "Kanishk Meena",
    "Nirupam Biswas",
    "Reet Chandra"
  ];

  List<String> posts = [
    "Co-Secretary General",
    "Co-Secretary General",
    "Under Secretary General",
    "Head of Technical Operations",
    "Head of Photography",
    "Technical Director",
    "Head of Security",
    "Co-Head of Social Media",
    "Co-Head of Social Media"
  ];

  List<String> images = [
    "Ortro.jpeg",
    "Akash.jpeg",
    "Grob.jpeg",
    "Hitan.jpeg",
    "Rishabh.jpg",
    "Ojas.jpg",
    "Kanishk.jpg",
    "Nirupam.jpg",
    "Reet.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      showTrackOnHover: true,
      interactive: true,
      child: Container(
        child: Scrollbar(
          child: ListView(children: [
            for (int i = 0; i < names.length; i++)
              Column(
                children: [
                  SizedBox(
                    height: 0.05 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 0.7 * MediaQuery.of(context).size.height,
                            width: 0.6 * MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffff6961),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width:
                                        0.5 * MediaQuery.of(context).size.width,
                                    height: 0.6 *
                                        MediaQuery.of(context).size.height,
                                    child: Image.asset("themes/" + images[i],
                                        fit: BoxFit.cover,
                                        alignment: Alignment.center),
                                  )
                                ],
                              ),
                              SizedBox(
                                  height: 0.02 *
                                      MediaQuery.of(context).size.height),
                              Row(
                                children: [
                                  Text(
                                    names[i] + "\n" + posts[i],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "heading",
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                ],
              ),
            SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
          ]),
        ),
      ),
    );
  }
}
