import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/home.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          image: DecorationImage(image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [
            const SizedBox(height:30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          'ABOUT US',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.053*width,
                            fontFamily: 'Xavier2',
                          ),
                        ),
                      ],
                    ),


                    const Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 20,
                      thickness: 2,
                    ),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        SizedBox(height: 0.02*height),
                        Container(
                          height: 2/5*height,
                          width : (2/5)*height*(1.5),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/sxcs_logo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 0.069*height),
                        const Text("ST. XAVIER'S COLLEGIATE SCHOOL", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 25)),
                        const Divider(
                          color: Colors.white,
                          indent: 550,
                          endIndent: 550,
                          height: 70,
                          thickness: 2,
                        ),


                        const Padding(
                          padding: EdgeInsets.fromLTRB(70, 0, 70, 100),
                          child: Text("In November, 1843, a fire broke out in San Souci Theatre, No.10 Park Street, Kolkata. It was an accident that changed the of Park Street and that of “The City of Joy”, Kolkata as well. Fire is indeed a destroyer but is also a purifier that get rid of the “old” and creates something new. The fire that destroyed the San Souci Theatre on that day rekindled another fire - “The fire of education”. Eventually that burnt out Theatre became the home of an institution that redefined modern education. A small band of Belgium Jesuits headed by Father Henry Depelchin opened their hearts and the doors of their abode at 10, Park Street (Now 30, Mother Teresa Sarani to become what today stands as a symbol of quality education in the country… St. Xavier’s Collegiate School, Kolkata. After 162 years since its opening, St. Xavier’s Collegiate School still is and will always be an inspiration of an organisation for all. Respecting and displaying proper edicate has been a major part of Xaverian culture and it is one that all future generations look to uphold. Nihil Ultra, Nothing Beyond!",
                            style : TextStyle(
                              fontSize: 25,
                              fontFamily: 'Xavier3',
                              color: Colors.white,
                            ),
                          ),

                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 20,
                      thickness: 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        SizedBox(height: 0.089*height),
                        Container(
                          height: 2/5*height,
                          width : (2/5)*height*(1.5),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/Newlogo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 0.069*height),
                        const Text("ABOUT X-UBERANCE", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 25)),
                        const Divider(
                          color: Colors.white,
                          indent: 550,
                          endIndent: 550,
                          height: 70,
                          thickness: 2,
                        ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(70, 20, 70, 100),
                      child: Text("St. Xavier's Collegiate School is proud to present to you the 16th edition of its cultural fest, X-Uberance. X-Uberance has a rich history and an excellent record in the past years, and this year around, we hope to continue and brighten the school spirits in the students of the City of Joy. This duration also helps us break free from our mundane routines and participate in friendly competitions with our counterparts from all around the city. As the saga of X-Uberance continues we look forward to the 14th, 15th and 16th of October, 2022 where we have in store a wide variety of events because we believe in helping the students of Kolkata nurture and develop their skills and in turn, help in Exemplifying Excellence.",
                        style : TextStyle(
                          fontSize: 25,
                          fontFamily: 'Xavier3',
                          color: Colors.white,
                        ),
                      ),

                    ),
                    ],
                ),
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
                                        image: AssetImage("images/Xaviers.jpg"),
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
                                  "   Phone 1 :  98765 43210",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                ),
                                Text(
                                  "   Phone 2 :  01234 56789",
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
                                    onPressed: (){launchUrl(Uri.parse("https://www.youtube.com/watch?v=KrgaIInWB6Y"));},
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
          ],
        ),
      ),
    );
  }

}