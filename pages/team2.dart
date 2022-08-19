import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../services/image_container_return.dart';
import '../pages/home.dart';
import '../pages/events.dart';
import '../pages/schedule.dart';
class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  Future<void> navigateToHome(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Home(),
      type: PageTransitionType.leftToRight,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Events(),
      type: PageTransitionType.leftToRight,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToSchedule(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Schedule(),
      type: PageTransitionType.leftToRight,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: false,
      extendBody: false,
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
            TextButton(onPressed: (){navigateToSchedule(context);}, child: const Text("Schedule", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)), ),
            TextButton(onPressed: (){navigateToEvents(context);}, child: const Text("Events", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
            TextButton(onPressed: (){}, child: const Text("Teams", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
            SizedBox(width:0.05*width, height: 0.1),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("OUR  TEAM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.043*width,
                        fontFamily: 'Xavier2',
                      ),),
                  ]
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.01221),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("TEACHERS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.033*width,
                        fontFamily: 'Xavier2',
                      ),),
                  ]
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                   SizedBox(height:0.1, width:width*0.2),
                   ImgRtr(name: "download", about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ", designation:"TEACHER-IN-CHARGE"),
                   ImgRtr(name: "download", about: "Best", designation:"TEACHER-IN-CHARGE"),
                   SizedBox(height:0.1, width:width*0.2),
                ],
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.01221),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("CORE COMMITTEE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.033*width,
                        fontFamily: 'Xavier2',
                      ),),
                  ]
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  SizedBox(height:0.1, width:width*0.05),
                  ImgRtr(name: "download", about: "Best", designation:"President"),
                  ImgRtr(name: "download", about: "Best", designation:"Secretary"),
                  ImgRtr(name: "download", about: "Best", designation:"Secretary"),

                  SizedBox(height:0.1, width:width*0.05),
                ],
              ),
              SizedBox(height: height*.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  SizedBox(height:0.1, width:width*0.05),
                  ImgRtr(name: "download", about: "Best", designation:"Treasurer"),
                  ImgRtr(name: "download", about: "Best", designation:"Treasurer"),
                  ImgRtr(name: "download", about: "Best", designation:"Treasurer"),

                  SizedBox(height:0.1, width:width*0.05),
                ],
              ),
              SizedBox(height: height*.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  SizedBox(height:0.1, width:width*0.05),
                  ImgRtr(name: "download", about: "Best", designation:"Technical Director"),
                  ImgRtr(name: "download", about: "Best", designation:"Technical Director"),
                  ImgRtr(name: "download", about: "Best", designation:"Technical Director"),

                  SizedBox(height:0.1, width:width*0.05),                ],
              ),
              SizedBox(height: height*.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  SizedBox(height:0.1, width:width*0.05),
                  ImgRtr(name: "download", about: "Best", designation:"External Director"),
                  ImgRtr(name: "download", about: "Best", designation:"External Director"),
                  ImgRtr(name: "download", about: "Best", designation:"External Director"),

                  SizedBox(height:0.1, width:width*0.05),
                ],
              ),
              SizedBox(height: height*.04),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.01221),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("TECH TEAM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.033*width,
                        fontFamily: 'Xavier2',
                      ),),
                  ]
              ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 80,
                thickness: 2,
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

            ],
          ),
        ),

      ),
    );
  }
}
