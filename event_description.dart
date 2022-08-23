import 'package:flutter/material.dart';
class Event extends StatefulWidget {
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

  Event({Key? key, required this.name,required this.about,
    required this.category,required this.location,required this.day,required this.time,required this.participants,
    required this.phrase,
    required this.rules, required this.link}) : super(key: key);

  @override
  State<Event> createState() => _EventState(name: name, about: about, category: category, location: location, day: day, time: time, participants: participants,phrase: phrase, rules: rules,link: link);
}

class _EventState extends State<Event> {
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
  _EventState({
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

    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*.17370,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
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
                  style: TextStyle(
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
            SizedBox(height: height*.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height*0.48,
                  width: height*0.48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("$link"),
                      fit: BoxFit.fitHeight,
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
            SizedBox(height: height*.05400,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Category :'+ category,
                  style: TextStyle(
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
                  'Location :'+ location,
                  style: TextStyle(
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
                  'Day :'+ day,
                  style: TextStyle(
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
                  'Time :'+ time,
                  style: TextStyle(
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
                  'Participants :'+ participants,
                  style: TextStyle(
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
                  style: TextStyle(
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
              children: [
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
            Container(
              child: Padding(
                padding: EdgeInsets.all(0.05*MediaQuery.of(context).size.width),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        rules,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Xavier2',
                        ),
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
