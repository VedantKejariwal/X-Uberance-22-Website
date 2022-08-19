import 'package:flutter/material.dart';
import '../services/timer.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body:Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              primary: true,
              child: Column(
                children:[
                  AppBar(
                    scrolledUnderElevation: 1.0,
                    elevation: 1.0,
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width:0.05*width, height: 0.1),
                        TextButton(onPressed: (){}, child: const Text("Home", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1',fontSize: 20)),),
                        TextButton(onPressed: (){}, child: const Text("Schedule", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)), ),
                        TextButton(onPressed: (){}, child: const Text("Events", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
                        TextButton(onPressed: (){}, child: const Text("Teams", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 20)),),
                        SizedBox(width:0.05*width, height: 0.1),
                      ],
                    ),
                    centerTitle: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.33*width/1.5 ,
                        width : 0.33*width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                          image: AssetImage("images/Logot.png"),
                          fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1/10*height,
                        width : 1.25/3*width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Logox.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1/10*height,
                        width : 1.15/3*width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Logobn.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  /*SizedBox(height:10/768*height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("X-UBERANCE '22",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.033*width,
                        fontFamily: 'Xavier2',
                      ),),
                    ]
                  ),
                  const SizedBox(height:7),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("EXEMPLIFYING EXCELLENCE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: .033*width*.5,
                            fontFamily: 'Xavier2',
                          ),),
                      ]
                  ),*/
                  //SizedBox(height:height* (.09)),
                  const Countdown(),
                  SizedBox(height: height* (.07)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        primary: Colors.black.withOpacity(0.5),
                        textStyle: const TextStyle(fontFamily: 'Xavier1', fontSize: 16.0,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                        fixedSize: Size(2/10*width, .1*height),
                      ), child: const Text("SPONSORS")
                      ),
                      SizedBox(width: .075* width),
                      ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        primary: Colors.black.withOpacity(0.5),
                        textStyle: const TextStyle(fontFamily: 'Xavier1', fontSize: 16.0,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                        fixedSize: Size(2/10*width, .1*height),
                      ), child: const Text("ABOUT US",),
                      ),
                    ],
                  ),
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
    );
  }
}
