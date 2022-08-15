import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:xmun/CommitteeDescription.dart';
import 'dart:html' as html;

class CommitteeSelection extends StatefulWidget {
  const CommitteeSelection({Key? key}) : super(key: key);

  @override
  State<CommitteeSelection> createState() => _CommitteeSelectionState();
}

class _CommitteeSelectionState extends State<CommitteeSelection> {
  Future<void> navigateToNaziSocialist(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CommitteeDescription(0)));
  }

  Future<void> navigateToUSA(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CommitteeDescription(1)));
  }

  Future<void> navigateToIndianConference(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CommitteeDescription(2)));
  }

  Future<void> navigateToUNSC(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => CommitteeDescription(3)));
  }

  final color = Color(0xffff6961);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 0.1*MediaQuery.of(context).size.height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    height: 0.4 * MediaQuery.of(context).size.height,
                    width: 0.3 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            onPressed: () {
                              navigateToNaziSocialist(context);
                            },
                            child: Container(
                              height: 0.38 * MediaQuery.of(context).size.height,
                              width: 0.28 * MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('themes/nazi communist party.jpg',
                                      fit: BoxFit.cover),
                                  ClipRRect(
                                    // Clip it cleanly.
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 2, sigmaY: 2),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.6),
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 0.22 *
                                              MediaQuery.of(context).size.width,
                                          child: Text(
                                              'Joint-Security Talks of the National Socialists German Workers\' Party and Union of Soviet Socialist Republics',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "body")),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
                Stack(alignment: Alignment.center, children: [
                  Container(
                    height: 0.4 * MediaQuery.of(context).size.height,
                    width: 0.3 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            onPressed: () {
                              navigateToUSA(context);
                            },
                            child: SizedBox(
                              height: 0.38 * MediaQuery.of(context).size.height,
                              width: 0.28 * MediaQuery.of(context).size.width,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('themes/USA.jpeg',
                                      fit: BoxFit.cover),
                                  ClipRRect(
                                    // Clip it cleanly.
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 2, sigmaY: 2),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.6),
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 0.22 *
                                              MediaQuery.of(context).size.width,
                                          child: Text(
                                              'Closed Sessions of The House of Representatives of The USA',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "body")),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
              ],
            ),
            SizedBox(height: 0.05*MediaQuery.of(context).size.height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    height: 0.4 * MediaQuery.of(context).size.height,
                    width: 0.3 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FlatButton(
                            onPressed: () {
                              navigateToIndianConference(context);
                            },
                            child: SizedBox(
                              height: 0.38 * MediaQuery.of(context).size.height,
                              width: 0.28 * MediaQuery.of(context).size.width,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('themes/Indian Conference.jpeg',
                                      fit: BoxFit.cover),
                                  ClipRRect(
                                    // Clip it cleanly.
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 2, sigmaY: 2),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.6),
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 0.22 *
                                              MediaQuery.of(context).size.width,
                                          child: Text(
                                              'Second All Parties Conference, India, 1939',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "body")),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
                Stack(alignment: Alignment.center, children: [
                  Container(
                    height: 0.4 * MediaQuery.of(context).size.height,
                    width: 0.3 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlatButton(
                            onPressed: () {
                              navigateToUNSC(context);
                            },
                            child: SizedBox(
                              height: 0.38 * MediaQuery.of(context).size.height,
                              width: 0.28 * MediaQuery.of(context).size.width,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('themes/yemen.jpeg',
                                      fit: BoxFit.cover),
                                  ClipRRect(
                                    // Clip it cleanly.
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 2, sigmaY: 2),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.6),
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          width: 0.22 *
                                              MediaQuery.of(context).size.width,
                                          child: Text(
                                              'United Nations Security Council',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "body")),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
              ],
            ),
            SizedBox(height: 0.1*MediaQuery.of(context).size.height),
          ],
        )
      ]),
    );
  }
}