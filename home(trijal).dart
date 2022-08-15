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
        appBar: AppBar(
          elevation: 0.0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){}, child: const Text("Home", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1')),),
              TextButton(onPressed: (){}, child: const Text("Schedule", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1')), ),
              TextButton(onPressed: (){}, child: const Text("Events", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1')),),
              TextButton(onPressed: (){}, child: const Text("Teams", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1')),),
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
                  SizedBox(height: height*.10416),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.25/5*height,
                        width : (1.25/5)*height*(1.5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                          image: AssetImage("images/Logo.png"),
                          fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:10/768*height),
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
                  ),
                  SizedBox(height:height* (24/768)),
                  const Countdown(),
                  SizedBox(height: height* (30/768)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        primary: Colors.black.withOpacity(0.5),
                        textStyle: const TextStyle(fontFamily: 'Xavier1', fontSize: 16.0,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                        fixedSize: const Size(150.0, 75.0),
                      ), child: const Text("SPONSORS")
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                        primary: Colors.black.withOpacity(0.5),
                        textStyle: const TextStyle(fontFamily: 'Xavier1', fontSize: 16.0,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                        fixedSize: const Size(150.0, 75.0),
                      ), child: const Text("ABOUT US",),
                      ),
                    ],
                  ),
                  SizedBox(height:1/7.5*height),
                ]
              ),
            ),

      ),
        bottomNavigationBar: Container(
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
    );
  }
}
