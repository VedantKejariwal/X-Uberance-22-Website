import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/team2.dart';
import '../pages/events.dart';
import '../pages/home.dart';
import '../pages/schedule.dart';
class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Team(),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context, PageTransition(
      child: Events(events_type: 1,),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToSchedule(context) async {
    Navigator.push(
        context, PageTransition(
      child: Schedule(day:1),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
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
      extendBody: true,
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
      body:Container(
        height: height,
        width:width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height:50),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children:[
                      SizedBox(height:1/7.5*height),
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
