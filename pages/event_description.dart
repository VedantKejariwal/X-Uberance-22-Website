// ignore_for_file: must_be_immutable, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/events.dart';
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

  Eventss({Key? key, required this.name,required this.about,
    required this.category,required this.location,required this.day,required this.time,required this.participants,
    required this.phrase,
    required this.rules, required this.link}) : super(key: key);

  @override
  State<Eventss> createState() => _EventssState(name: name, about: about, category: category, location: location, day: day, time: time, participants: participants,phrase: phrase, rules: rules,link: link);
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
  _EventssState({
    required this.name,required this.about,
    required this.category,required this.location, required this.day,required this.time,required this.participants,
    required this.phrase,
    required this.rules,
    required this.link,
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
                int type = 0;
                if(category == "SPORTING")
                {
                  type = 1;
                }
                else if(category == "OFF-STAGE")
                {
                  type = 2;
                }
                else
                {
                  type = 3;
                }
                navigateToEvents(context, type);
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
                  Text(
                    'Category :$category',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Location :$location',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Day :$day',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Time :$time',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Participants :$participants',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.06400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    phrase,
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
              SizedBox(height: height*.06400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'EVENT  RULES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.02400,),
              Padding(
                padding: EdgeInsets.all(0.05*MediaQuery.of(context).size.width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        rules,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Xavier2',
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