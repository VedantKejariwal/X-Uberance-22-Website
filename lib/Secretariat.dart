import 'package:flutter/material.dart';
import 'dart:html' as html;

class Secretariat extends StatefulWidget {
  const Secretariat({Key? key}) : super(key: key);

  @override
  State<Secretariat> createState() => _SecretariatState();
}

class _SecretariatState extends State<Secretariat> {
  List<String> namesleft = [
    "Aritra Mookherjee",
    "Gourab Saha",
    "Ojas Jha",
    "Nirupam Biswas",
  ];

  List<String> namesright = [
    "Akash Roy",
    "Hitansh Agarwal",
    "Rishab Mookherjee",
    "Kanishk Meena",
  ];

  List<String> postsleft = [
    "Co-Secretary General",
    "Under Secretary General",
    "Technical Director",
    "Co-Head of Social Media",
  ];

  List<String> postsright = [
    "Co-Secretary General",
    "Head of Technical Operations",
    "Head of Photography",
    "Head of Security",
  ];

  List<String> imagesleft = [
    "Ortro.jpeg",
    "Grob.jpeg",
    "Ojas.jpg",
    "Nirupam.jpg"
  ];
  List<String> imagesright = [
    "Akash.jpeg",
    "Hitan.jpeg",
    "Rishabh.jpg",
    "Kanishk.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      showTrackOnHover: true,
      interactive: true,
      child: Container(
        child: Scrollbar(
          child: ListView(children: [
            for (int i = 0; i < namesleft.length; i++)
              Column(
                children: [
                  SizedBox(
                    height: 0.05 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 0.08 * MediaQuery.of(context).size.width,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 0.7 * MediaQuery.of(context).size.height,
                            width: 0.35 * MediaQuery.of(context).size.width,
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
                                        0.3 * MediaQuery.of(context).size.width,
                                    height: 0.6 *
                                        MediaQuery.of(context).size.height,
                                    child: Image.asset(
                                        "themes/" + imagesleft[i],
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
                                    namesleft[i] + "\n" + postsleft[i],
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
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 0.7 * MediaQuery.of(context).size.height,
                            width: 0.35 * MediaQuery.of(context).size.width,
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
                                        0.3 * MediaQuery.of(context).size.width,
                                    height: 0.6 *
                                        MediaQuery.of(context).size.height,
                                    child: Image.asset(
                                        "themes/" + imagesright[i],
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
                                    namesright[i] + "\n" + postsright[i],
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
                      SizedBox(
                        width: 0.08 * MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                  SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 0.7 * MediaQuery.of(context).size.height,
                      width: 0.35 * MediaQuery.of(context).size.width,
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
                              width: 0.3 * MediaQuery.of(context).size.width,
                              height: 0.6 * MediaQuery.of(context).size.height,
                              child: Image.asset("themes/Reet.jpeg",
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter),
                            )
                          ],
                        ),
                        SizedBox(
                            height: 0.02 * MediaQuery.of(context).size.height),
                        Row(
                          children: [
                            Text(
                              "Reet Chandra\nCo-Head of Social Media",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "heading", color: Colors.white),
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
          ]),
        ),
      ),
    );
  }
}
