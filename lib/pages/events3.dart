// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/constants.dart' as c;
import 'package:page_transition/page_transition.dart';
import '../pages/team2.dart';
import '../pages/home.dart';
import '../pages/events.dart';
import '../pages/events2.dart';
import '../pages/schedule.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Events3 extends StatefulWidget {
  const Events3({Key? key}) : super(key: key);


  @override

  State<Events3> createState() => _Events3State();
}

class _Events3State extends State<Events3> {
  Future<void> navigateToEvents(context, int category) async {
    Navigator.push(
        context,
        PageTransition(
          child: Events(events_type: category),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }
  Future<void> navigateToEvents2() async {
    Navigator.push(
        context,
        PageTransition(
          child: const Events2(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }
  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Team(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToHome(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Home(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToDay(context, int a) async {
    Navigator.push(
        context,
        PageTransition(
          child: Schedule(day: a),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToDescription(context, int category, String a) async {
    late Widget ret;
    if (category == 1) {
      ret = c.Sporting[c.Sporting1.indexOf(a)];
    }
    if (category == 2) {
      ret = c.OffStage[c.Offstage1.indexOf(a)];
    }
    if (category == 3) {
      ret = c.OnStage[c.Onstage1.indexOf(a)];
    }
    Navigator.push(
        context,
        PageTransition(
          child: ret,
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List Event = c.Onstage1.getRange(0, c.Onstage1.length ~/ 2).toList();
    List Event2 = c.Onstage1.getRange(c.Onstage1.length ~/ 2, c.Onstage1.length).toList();


    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 0.05 * width, height: 0.1),
            TextButton(
              onPressed: () {
                navigateToHome(context);
              },
              child: const Text("Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToDay(context, 1);
              },
              child: const Text("Schedule",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Events",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 4.0,
                      shadows: [Shadow(
                        color: Colors.white,
                        offset: Offset(0, -5),
                      )],
                      color: Colors.transparent,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToTeams(context);
              },
              child: const Text("Teams",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            SizedBox(width: 0.05 * width, height: 0.1),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'EVENTS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.053*width,
                            fontFamily: 'Xavier2',
                          ),
                        ),
                        SizedBox(width: width*0.311,),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: IconButton(onPressed: (){},
                              icon:Icon(Icons.account_circle,
                                size: 50,
                                color: Colors.white,) ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 55,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {
                              navigateToEvents(context, 1);
                            },
                            child: const Text(
                              'SPORTING',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {
                              navigateToEvents2();
                            },
                            child: const Text(
                              'OFF STAGE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: TextButton(
                            onPressed: () {
                            },

                            child: const Text(
                              'ON STAGE',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                                decorationThickness: 4.0,
                                shadows: [Shadow(
                                  color: Colors.white,
                                  offset: Offset(0, -5),
                                )],
                                color: Colors.transparent,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 55,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: Event.map((event1) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    onTap: () {
                                      navigateToDescription(
                                          context, 3, event1);
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            height: 0.15 * width,
                                            width: 0.15 * width,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  // ignore: prefer_interpolation_to_compose_strings
                                                    "${'images/' + event1}.png"),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 0.15 * width, height: 30),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: Event2.map((event2) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: InkWell(
                                    onTap: () {
                                      navigateToDescription(
                                          context, 3, event2);
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            height: 0.15 * width,
                                            width: 0.15 * width,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "${'images/' + event2}.png"),
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 0.1 * width, height: 20),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height:1/7.5*height),
                    Container(
                      color: const Color(0xff2F303A),
                      height: ((1.6 / 5) * height),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5, width: 10),
                                InkWell(
                                  onTap: () {
                                    launchUrl(Uri.parse("https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US"));                                },
                                  child: Container(
                                    height: (3.5 / 5) * ((1.6 / 5) * height),
                                    width: (1 / 5.5) * width,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("images/Xaviers.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){launchUrl(Uri.parse("https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US"));},
                                  child: Text(
                                    "30 Mother Teresa Sarani, Kolkata-700016",
                                    style: TextStyle(
                                        color: Colors.white, fontFamily: 'Xavier3'),
                                  ),
                                ),
                              ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                SizedBox(height: 0, width: 10),
                                Text(
                                  "  Contact Us",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 20,),
                                ),
                                TextButton(
                                  onPressed: (){
                                    launchUrl(Uri.parse("mailto:info@xuberance22.com"));
                                  },
                                  child:Text(
                                    " Email : info@xuberance22.com",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                  ), ),
                                Text(
                                  "   Phone 1 :  98765 43210",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                ),
                                Text(
                                  "   Phone 2 :  01234 56789",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                ),
                              ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              SizedBox(height: 0, width: 10),
                              Text(
                                "  Social Handles",
                                style: TextStyle(
                                  color: Colors.white, fontFamily: 'Xavier3',fontSize: 20,),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: (){launchUrl(Uri.parse("https://www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D"));},
                                    icon: FaIcon(FontAwesomeIcons.instagram,
                                      color: Colors.white,),
                                  ),
                                  SizedBox(width: 0.2),
                                  Text(
                                    "  Instagram",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                  ),


                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: (){launchUrl(Uri.parse("https://www.youtube.com/watch?v=KrgaIInWB6Y"));},
                                    icon: FaIcon(FontAwesomeIcons.youtube,
                                      color: Colors.white,),
                                  ),
                                  SizedBox(width: 0.2),
                                  Text(
                                    "  YouTube",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                  ),


                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}