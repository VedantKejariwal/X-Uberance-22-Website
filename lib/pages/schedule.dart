import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../services/constants.dart' as c;
import 'package:page_transition/page_transition.dart';
import '../pages/team2.dart';
import '../pages/events.dart';
import '../pages/home.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Schedule extends StatefulWidget {
  int day = 0;

  Schedule({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Schedule> createState() => _ScheduleState(day: day);
}

class _ScheduleState extends State<Schedule> {
  int day = 0;

  _ScheduleState({
    required this.day,
  });

  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: Team(),
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: Events(
            events_type: 1,
          ),
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToHome(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: Home(),
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToDay(context, int a) async {
    Navigator.push(
        context,
        PageTransition(
          child: Schedule(day: a),
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Widget> Events = [
      Text(
        '           EVENTS         ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 0.0213 * width,
          fontFamily: 'Xavier1',
        ),
      ),
      SizedBox(height: 20)
    ];
    List<Widget> Timing = [
      Text(
        '           TIMINGS           ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 0.0213 * width,
          fontFamily: 'Xavier1',
        ),
      ),
      SizedBox(height: 20)
    ];
    List<Widget> Venue = [
      Text(
        '          VENUE           ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 0.0213 * width,
          fontFamily: 'Xavier1',
        ),
      ),
      SizedBox(height: 20)
    ];
    if (day == 1) {
      Events.insertAll(
          2,
          c.Day1Event.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
      Timing.insertAll(
          2,
          c.Day1Timing.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
      Venue.insertAll(
          2,
          c.Day1Venue.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
    }
    if (day == 2) {
      Events.insertAll(
          2,
          c.Day2Event.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
      Timing.insertAll(
          2,
          c.Day2Timing.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
      Venue.insertAll(
          2,
          c.Day2Venue.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
    }
    if (day == 3) {
      Events.insertAll(
          2,
          c.Day3Event.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
      Timing.insertAll(
          2,
          c.Day3Timing.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
      Venue.insertAll(
          2,
          c.Day3Venue.map((Event) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 13),
              child: Text(
                Event,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 0.0185 * width,
                  fontFamily: 'Xavier3',
                ),
              ),
            );
          }).toList());
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 0.05 * width, height: 0.1),
            TextButton(
              onPressed: () {
                navigateToHome(context);
              },
              child: Text("Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Schedule",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 4.0,
                      shadows: [
                        Shadow(
                          color: Colors.white,
                          offset: Offset(0, -5),
                        )
                      ],
                      color: Colors.transparent,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToEvents(context);
              },
              child: Text("Events",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToTeams(context);
              },
              child: Text("Teams",
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SCHEDULE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053 * width,
                              fontFamily: 'Xavier2',
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 55,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: height * .035,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${13 + day}TH OCTOBER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.04 * width,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .035,
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 55,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              navigateToDay(context, 1);
                            },
                            child: Text(
                              '         DAY 1        ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 0.025 * width,
                                fontFamily: 'Xavier1',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              navigateToDay(context, 2);
                            },
                            child: Text(
                              '       DAY 2        ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 0.025 * width,
                                fontFamily: 'Xavier1',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              navigateToDay(context, 3);
                            },
                            child: Text(
                              '         DAY 3        ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 0.025 * width,
                                fontFamily: 'Xavier1',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 55,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: Events,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: Venue),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: Timing),
                        ],
                      ),
                      SizedBox(height: 1 / 7.5 * height),
                      Container(
                        color: Color(0xff2F303A),
                        height: ((1.6 / 5) * height),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5, width: 0.005 * width),
                                  InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(
                                          "https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US"));
                                    },
                                    child: Container(
                                      height: (3.5 / 5) * ((1.6 / 5) * height),
                                      width: (1 / 5.5) * width,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "images/XAVIERS_MAP.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(
                                          "https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US"));
                                    },
                                    child: Text(
                                      "30 Mother Teresa Sarani, Kolkata-700016",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Xavier3',
                                          fontSize: 0.015 * width),
                                    ),
                                  ),
                                ]),
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0, width: 9),
                                  Text(
                                    "  Contact Us",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Xavier3',
                                      fontSize: 0.018 * width,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      launchUrl(Uri.parse(
                                          "mailto:info@xuberance22.com"));
                                    },
                                    child: Text(
                                      "Email : info@xuberance22.com",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3',
                                        fontSize: 0.015 * width,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "   Phone 1 :  98365 63241",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Xavier3',
                                      fontSize: 0.015 * width,
                                    ),
                                  ),
                                  Text(
                                    "   Phone 2 :  9007683631",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Xavier3',
                                      fontSize: 0.015 * width,
                                    ),
                                  ),
                                ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 0, width: 0.005 * width),
                                Text(
                                  "  Social Handles",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Xavier3',
                                    fontSize: 0.018 * width,
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        launchUrl(Uri.parse(
                                            "https://www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D"));
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 0.2),
                                    Text(
                                      "  Instagram",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3',
                                        fontSize: 0.015 * width,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        launchUrl(Uri.parse(
                                            "https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.youtube,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 0.2),
                                    Text(
                                      "  YouTube",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Xavier3',
                                        fontSize: 0.015 * width,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
