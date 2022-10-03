import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xuberance2022_website/pages/event_description.dart';
import '../services/constants.dart' as c;
import 'package:page_transition/page_transition.dart';
import '../pages/team2.dart';
import '../pages/home.dart';
import '../pages/events.dart';
import '../pages/events2.dart';
import '../pages/schedule.dart';
import 'package:url_launcher/url_launcher.dart';

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {



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
      body: Container(
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
            SizedBox(height: 50,),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("SCHOOLS   PARTICIPATING",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053*width,
                              fontFamily: 'Xavier2',
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
                      SizedBox(height: height*.02),
                      
                      SizedBox(height: height*.02),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(

                              children: [
                                SizedBox(height: 40,),
                                Text(
                                  """
1. 
                                  
2. 

3. 

4.

5. 

6.

7.

8.  

9. 
                                  
10. 

11. 

12. 

13. 

14.

15.

16.                           
                  
                                  """,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Xavier3',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: .5/ 7.5 * height),
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
                                          color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width),
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
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.018 * width,),
                                  ),
                                  TextButton(
                                    onPressed: (){
                                      launchUrl(Uri.parse("mailto:info@xuberance22.com"));
                                    },
                                    child:Text(
                                      "Email : info@xuberance22.com",
                                      style: TextStyle(
                                        color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                                    ), ),
                                  Text(
                                    "   Phone 1 :  98365 63241",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                                  ),
                                  Text(
                                    "   Phone 2 :  9007683631",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                                  ),
                                ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                SizedBox(height: 0, width: 10),
                                Text(
                                  "    Social Handles",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.018 * width,),
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
                                        color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
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
                                        color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
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
          ],
        ),
      ),
    );
  }
}
