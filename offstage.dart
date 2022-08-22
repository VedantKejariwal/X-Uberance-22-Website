import 'package:flutter/material.dart';

import 'imgrtn.dart';
import 'onfield.dart';
import 'onstage.dart';
class OffStage extends StatefulWidget {
  const OffStage({Key? key}) : super(key: key);

  @override
  State<OffStage> createState() => _OffStageState();
}

class _OffStageState extends State<OffStage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    String link = "https://i.pinimg.com/474x/49/11/11/491111dae73aa7d8cccd0560670ca392.jpg" ;
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*.23400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: Text(
                      'EVENTS',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.cyan,
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
                height: 80,
                thickness: 2,
              ),
              SizedBox(height: height*.03400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: width*0.01,height: 0.1,),
                  TextButton(onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OffStage()));
                  },
                    child: const Text('OFF STAGE',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Xavier2',
                      ),
                    ),),
                  SizedBox(width: width*.0791,),
                  Center(

                    child: TextButton(onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  OnStage()));
                    },
                      child: const Text('On Stage',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Xavier2',
                        ),
                      ),),
                  ),
                  SizedBox(width: width*.0791,),
                  TextButton(onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnField()));
                  },
                    child: const Text('On Field',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Xavier2',
                      ),
                    ),),
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
                  SizedBox(height:0.1, width:width*0.2),
                  Img(u: link)
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:0.1, width:width*0.2),
                  Img(u: link)
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:0.1, width:width*0.2),
                  Img(u: link)
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:0.1, width:width*0.2),
                  Img(u: link)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
