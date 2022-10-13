
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xuberance2022_website/pages/events.dart';
import 'package:xuberance2022_website/pages/home.dart';
import 'package:page_transition/page_transition.dart';


import 'location_page.dart';

class Event{
  final String name;
  final String about;
  final String location;
  final String map;
  String floor;

  Event({
    required this.name,required this.about, required this.location,required this.map,required this.floor,
  });
}

class Event_Location extends StatefulWidget {
  const Event_Location({Key? key}) : super(key: key);

  @override
  State<Event_Location> createState() => _Event_LocationState();
}

class _Event_LocationState extends State<Event_Location> {
  List Events = [
    Event(
      name: "X-GOAL (BOYS)",
      about: "Football",
      location: 'Primary School \n                   Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-GOAL (GIRLS)",
      about: "Football",
      location: 'Primary School \n                   Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-HOOP (BOYS)",
      about: "Basketball",
      location: 'Basketball Court',
      map: 'map_events/X-HOOP',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-HOOP (GIRLS)",
      about: "Basketball",
      location: 'Basketball Court',
      map: 'map_events/X-HOOP',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PONG (BOYS)",
      about: "Table Tennis",
      location: 'Games Room',
      map: 'map_events/X-Pong',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PONG (GIRLS)",
      about: "Table Tennis",
      location: 'Games Room',
      map: 'map_events/X-Pong',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-SPIKE (BOYS)",
      about: "Volleyball",
      location: 'Primary School \n                   Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-SPIKE (GIRLS)",
      about: "Volleyball",
      location: 'Primary School \n                   Field',
      map: 'map_events/Field_Primary_School',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PULL (BOYS)",
      about: "Tug Of War",
      location: 'Front Field',
      map: 'map_events/X-PULL',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PULL (GIRLS)",
      about: "Tug Of War",
      location: 'Front Field',
      map: 'map_events/X-PULL',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-MATE",
      about: "Chess",
      location: 'Big Parlour',
      map: 'map_events/X-MATE',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-WICKET (BOYS)",
      about: "Cricket",
      location: 'Basketball Court',
      map: 'map_events/X-WICKET',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-WICKET (GIRLS)",
      about: "Cricket",
      location: 'Basketball Court',
      map: 'map_events/X-WICKET',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-O☐Δ",
      about: "FIFA",
      location: 'AV Room',
      map: 'map_events/X-O☐Δ',
      floor: 'First Floor',
    ),
    Event(
      name: "X-QUIZITE",
      about: "Quiz",
      location: 'Reading Room',
      map: 'map_events/X-QUIZITE',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-GAANA",
      about: "Antakshari",
      location: 'Xavier Hall',
      map: 'map_events/X-GAANA',
      floor: 'First Floor',
    ),
    Event(
      name: "X-SPLASH",
      about: "Sketches and Spray Painting",
      location: 'Games Room',
      map: 'map_events/X-SPLASH',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-TRIAL",
      about: "Moot Court",
      location: 'AV Room',
      map: 'map_events/X-TRIAL',
      floor: 'First Floor',
    ),
    Event(
      name: "X-30",
      about: "Extempore-Half A Minute",
      location: 'Reading Room',
      map: 'map_events/X-BID',//for reading room
      floor: 'First Floor',
    ),
    Event(
      name: "X-CALIBRE",
      about: "Debate",
      location: 'Xavier Hall',
      map: 'map_events/X-CALIBRE',
      floor: 'First Floor',
    ),
    Event(
      name: "X-BID",
      about: "Auction",
      location: 'Reading Room',
      map: 'map_events/X-BID',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-HUNT",
      about: "Treasure Hunt",
      location: 'School Campus',
      map: 'map_events/X-HUNT',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-CODE",
      about: "Hackathon",
      location: 'Computer Lab',
      map: 'map_events/X-CODE',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-PIXEL",
      about: "Photography",
      location: 'School Campus',
      map: 'map_events/X-MONTAGE',//for school campus
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-MONTAGE",
      about: "Vlogging",
      location: 'School Campus',
      map: 'map_events/X-MONTAGE',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-60",
      about: "One Minute To Fame",
      location: 'Big Parlour',
      map: 'map_events/X-60',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-ABHINOY",
      about: "Bengali Play",
      location: '   Gymnasium \n             (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-ACT",
      about: "AD Spoof",
      location: 'AV Room',
      map: 'map_events/X-ACT',
      floor: 'First Floor',
    ),
    Event(
      name: "X-DROP",
      about: "Rap Battle and Beatboxing",
      location: '   Auditorium \n             (Primary School)',
      map: 'map_events/Primary_Auditorium',
      floor: 'First Floor',
    ),
    Event(
      name: "X-RHYME",
      about: "Slam Poetry",
      location: 'Reading Room',
      map: 'map_events/X-RYHME',
      floor: 'Second Floor',
    ),
    Event(
      name: "X-RAGA",
      about: "Eatern Music",
      location: 'Xavier Hall',
      map: 'map_events/X-RAGA',
      floor: 'First Floor',
    ),
    Event(
      name: "X-HOP",
      about: "Dance Face Off",
      location: '   Gymnasium \n             (Primary School)',
      map: 'map_events/Primary_Gymnasium.',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-TRAVAGANCE",
      about: "Western Dance",
      location: '   Gymnasium \n             (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-ACOUSTIC",
      about: "Western Music",
      location: 'Gymnasium',
      map: 'map_events/X-ACOUSTIC',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-PUN",
      about: "Stand Up Comedy",
      location: '   Gymnasium \n             (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
    Event(
      name: "X-VOGUE",
      about: "Fashion Show",
      location: '   Gymnasium \n             (Senior School)',
      map: 'map_events/Gymnasium',
      floor: 'Ground Floor',
    ),
  ];


  Future<void> navigateToHome(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Home(),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: width*0.01, height:0.1),
            BackButton(
              color: Colors.white,
              onPressed: (){navigateToHome(context);},
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
        child: Scrollbar(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Events',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Xavier2",
                      color: Colors.white,
                      fontSize: 0.053*width),),
              ),
              for(Event e in Events)
                Column(
                  children: [
                    SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        title: Text(
                          e.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                              0.02 * MediaQuery.of(context).size.height),
                        ),
                        subtitle: Text(
                          e.about,
                          style: const TextStyle(
                              color: Colors.white, fontFamily: 'Xavier3'),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Location(name: e.name, des: e.about, mapLink: e.map, loc: e.location, floor: e.floor,)));
                        },
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 1 / 7.5 * height),
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
                                  image: AssetImage("images/XAVIERS_MAP.png"),
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
                            "   Phone 1 :  98365 63241",
                            style: TextStyle(
                              color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                          ),
                          Text(
                            "   Phone 2 :  9007683631",
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
                              onPressed: (){launchUrl(Uri.parse("https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));},
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
    );
  }
}

