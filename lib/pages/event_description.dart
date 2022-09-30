import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/events.dart';
import '../pages/events2.dart';
import '../pages/events3.dart';
class Eventss extends StatefulWidget {
  String name;
  String about;
  String category;
  String location;
  String day;
  String time;
  String participants;
  String phrase;
  String rules;
  String link;
  String maplink;

  Eventss({Key? key, required this.name,required this.about,
    required this.category,required this.location,required this.day,required this.time,required this.participants,
    required this.phrase,
    required this.rules, required this.link, required this.maplink}) : super(key: key);

  @override
  State<Eventss> createState() => _EventssState(name: name, about: about, category: category, location: location, day: day, time: time, participants: participants,phrase: phrase, rules: rules,link: link, maplink: maplink);
}

class _EventssState extends State<Eventss> {
  String name;
  String about;
  String category;
  String location;
  String day;
  String time;
  String participants;
  String phrase;
  String rules;
  String link;
  String maplink;
  _EventssState({
    required this.name,required this.about,
    required this.category,required this.location, required this.day,required this.time,required this.participants,
    required this.phrase,
    required this.rules,
    required this.link,
    required this.maplink
  });
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Future<void> navigateToEvents(context, int type) async {
      Navigator.push(
          context, PageTransition(
        child: Events(events_type:type),
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds:500 ),
      ));
    }
    Future<void> navigateToEvents2(context) async {
      Navigator.push(
          context, PageTransition(
        child: Events2(),
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds:500 ),
      ));
    }
    Future<void> navigateToEvents3(context) async {
      Navigator.push(
          context, PageTransition(
        child: Events3(),
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds:500 ),
      ));
    }
    return  Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: width*0.01, height:0.1),
            BackButton(
              color: Colors.white,
              onPressed: (){
                int type = 1;
                if(category == "SPORTING")
                {
                  navigateToEvents(context, type);
                }
                else if(category == "OFF-STAGE")
                {
                  navigateToEvents2(context);
                }
                else
                {
                  navigateToEvents3(context);
                }

              },
            ),
          ],
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 84,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              //eg - Repressentative event
              SizedBox(height: height*.03400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    about,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height*0.3,
                    width: height*0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(link+".png"),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(Uri.parse("$maplink"));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      textStyle: const TextStyle(
                        fontFamily: 'Xavier2',
                        fontSize: 25.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(2 / 10 * width, .1 * height),
                    ),
                    child: Text(
                      "$location",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Xavier1',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Category : $category',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              //SizedBox(height: height*.02400,),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Text(
              //                     'Location : $location',
              //                     style: const TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 32,
              //                       fontFamily: 'Xavier1',
              //                     ),
              //                   ),
              //                 ],
              //               ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Day : $day',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Time : $time',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Participants : $participants',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.005,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'EVENT  RULES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
                indent: 550,
                endIndent: 550,
                height: 80,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.05*MediaQuery.of(context).size.width, 18, 0.05*MediaQuery.of(context).size.width, 0.05*MediaQuery.of(context).size.width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        rules,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Xavier3',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.005,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'GENERAL GUIDELINES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier1',
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
                indent: 550,
                endIndent: 550,
                height: 80,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.05*MediaQuery.of(context).size.width, 18, 0.05*MediaQuery.of(context).size.width, 0.05*MediaQuery.of(context).size.width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        """
Venue: St. Xavier's Collegiate School, Kolkata
Dates: 14th, 15th and 16th October, 2022

1. Each school must be represented by two students who must be present throughout the fest.

2. WhatsApp groups for the school representatives will be formed which will also comprise the administration. This group shall act as a medium for the clearance of all doubts and questions regarding a particular event or the whole fest in general.

3. School Uniform along with School ID cards is mandatory for all participants and non-participants unless otherwise mentioned.

4. All events, unless otherwise mentioned, are open for participation to the students of classes 9 to 12.

5. Decorum and norms of decency must be maintained at all times.

6. Points will be added to the total tally of schools for participating in each event. Hence, maximum participation by each school is encouraged.

7. Each event shall recognize the top 3 position holders and for securing one of these ranks in any of the events.

8. Upholding the Xaverian principles of integrity and honesty, it is imperative that we look at any competition with a mindset to learn. In the spirit of contesting, we must not forget our ethics and maintain a positive outlook towards our fellow competitors. We expect all participants to refrain from using unfair means while participating in their respective events.

9. Rights to admission are reserved.
                        
                        """,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Xavier3',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class EventTeam extends StatefulWidget {
  String dep;
  String name1;
  String name2;

  EventTeam(
      {Key? key, required this.dep, required this.name1, required this.name2})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<EventTeam> createState() =>
      // ignore: no_logic_in_create_state
  _EventTeamState(dep: dep, name1: name1, name2: name2);
}

class _EventTeamState extends State<EventTeam> {
  String dep;
  String name1;
  String name2;

  _EventTeamState(
      {required this.dep, required this.name1, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            dep,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Xavier1",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            name1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Xavier3",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name2,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Xavier3",
            ),
          ),
        ],
      ),
    );
  }
}
