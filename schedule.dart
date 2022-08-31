// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:xuberence22/constants.dart' as c;
import 'package:page_transition/page_transition.dart';

// ignore: must_be_immutable
class Schedule extends StatefulWidget {
  int day = 0;
  Schedule({Key? key, required this.day,}) : super(key: key);


  @override
  // ignore: no_logic_in_create_state
  State<Schedule> createState() => _ScheduleState(day: day);
}

class _ScheduleState extends State<Schedule> {
  int day = 0;
  _ScheduleState({ required this.day,}) ;

  Future<void> navigateToDay(context, int a) async {
    Navigator.push(
        context, PageTransition(
      child: Schedule(day: a),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List Events = [] ;
    List Timing = [];
    List Venue  = [];
    List EventName = [];
    String date = '';
    if(day == 1)
    {
      Events = c.Day1Event;
      EventName = c.Day1EventName;
      Timing = c.Day1Timing;
      Venue = c.Day1Venue;
      date = '14th Oct';
    }
    if(day == 2)
    {
      Events = c.Day2Event;
      EventName = c.Day2EventName;
      Timing = c.Day2Timing;
      Venue = c.Day2Venue;
      date = '15th Oct';
    }
    if(day == 3)
    {
      Events = c.Day3Event;
      EventName = c.Day3EventName;
      Timing = c.Day3Timing;
      Venue = c.Day3Venue;
      date = '16th Oct';
    }
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
            SizedBox(width:0.05*width, height: 0.1),
            TextButton(onPressed: (){}, child: const Text("Home", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1',fontSize: 20)),),
            TextButton(onPressed: (){},style: TextButton.styleFrom(backgroundColor: Colors.blue[800]), child: const Text("Schedule", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)), ),
            TextButton(onPressed: (){}, child: const Text("Events", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
            TextButton(onPressed: (){}, child: const Text("Teams", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
            SizedBox(width:0.05*width, height: 0.1),
          ],
        ),
        centerTitle: true,

      ),
      body : Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),

        child : Column(
          children: [
            const SizedBox(height: 100),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children : const [
                          Text(
                            'Schedule',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: 'Xavier2',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        indent: 450,
                        endIndent: 450,
                        height: 20,
                        thickness: 2,
                      ),

                      Text(
                          date,
                              style: const TextStyle(
                              fontSize: 15,
                                  color: Colors.white,
                                fontFamily: 'Xavier1'
                      ),
                      ),
                      const Divider(
                        color: Colors.white,
                        indent: 450,
                        endIndent: 450,
                        height: 20,
                        thickness: 2,
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
                          TextButton(
                            onPressed: (){
                              navigateToDay(context, 1);
                            },
                            child: const Text(
                              'DAY 1',
                              style : TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              navigateToDay(context, 2);
                            },
                            child: const Text(
                              'DAY 2',
                              style : TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              navigateToDay(context, 3);
                            },
                            child: const Text(
                              'DAY 3',
                              style : TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
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
                      Container(
                        padding: const EdgeInsets.fromLTRB(100, 30, 100, 100),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:

                                    EventName.map((Event){
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 13),
                                        child: TextButton(
                                          onPressed: (){},
                                          child: RichText(

                                            text: TextSpan(
                                              children:
                                                  [

                                                TextSpan(
                                                  text : '$Event\n',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 23,
                                                    fontFamily: 'Xavier2',
                                                  ),
                                                ),

                                                const WidgetSpan(
                                                    child: SizedBox(height:15,)
                                                ),
                                                TextSpan(
                                                  text: Events[EventName.indexOf(Event)],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: 'Xavier2',
                                                  ),
                                                ),
                                              ],
                                            ),

                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );

                                    }).toList(),


                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    Venue.map((Venue){
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 19),
                                        child: TextButton(
                                          onPressed: (){},
                                          child: Text(
                                            Venue,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontFamily: 'Xavier2',
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    Timing.map((Time){
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 19),
                                        child: TextButton(
                                          onPressed: (){},
                                          child: Text(
                                            Time,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontFamily: 'Xavier2',
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),

                      ),
                      Container(
                        color: const Color(0xff2F303A),
                        height: ((1.6/5)*height),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  const SizedBox(height:5, width:10),
                                  const Text("Location", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Container(
                                    height: (3.5/5)*((1.6/5)*height),
                                    width: (1/5.5)*width,
                                    color: Colors.black,
                                  ),
                                  const Text("30 Mother Teresa Sarani, Kolkata-700016", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                ]
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                  SizedBox(height:0, width:10),
                                  Text("Contact Us", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Text("Gmail: xuberancetechteam2022@gmail.com", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Text("Phone1: 9876543210", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Text("Phone2: 0123456789", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                ]
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:const [
                                  SizedBox(height:0, width:10),
                                  Text("Social Handles", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Text("Facebook", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Text("Instagram", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                  Text("Twitter", style: TextStyle(color: Colors.white, fontFamily: 'Xavier3'),),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );


  }

}