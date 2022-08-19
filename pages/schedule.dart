import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/team2.dart';
import '../pages/events.dart';
import '../pages/home.dart';
class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Team(),
      type: PageTransitionType.rightToLeft,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Events(),
      type: PageTransitionType.rightToLeft,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToHome(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Home(),
      type: PageTransitionType.leftToRight,
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
        shadowColor: const Color(0xff040C20),
        backgroundColor: const Color(0xff040C20),
        foregroundColor: const Color(0xff040C20),
        surfaceTintColor: const Color(0xff040C20),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width:0.05*width, height: 0.1),
            TextButton(onPressed: (){navigateToHome(context);}, child: const Text("Home", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1',fontSize: 20)),),
            TextButton(onPressed: (){}, child: const Text("Schedule", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)), ),
            TextButton(onPressed: (){navigateToEvents(context);}, child: const Text("Events", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
            TextButton(onPressed: (){navigateToTeams(context);}, child: const Text("Teams", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
            SizedBox(width:0.05*width, height: 0.1),
          ],
        ),
        centerTitle: true,
      ),
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
              children:[
                SizedBox(width: width, height: 60),
                Container(
                  color: Colors.transparent,
                  height:height - 100,
                  child: const Text("KAAM BAAKI", style: TextStyle(fontFamily: 'Xavier1',color: Colors.white, fontSize: 50),),
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
    );
  }
}
