import 'package:flutter/material.dart';


class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  List Day3EventName =['X-Spike','X-Calibre','X-Bid','X-Act','X-Code','X-Hunt','X-Travagance','X-uent'];
  List Day3Event =['Volleyball','Debate','IPL Auction','AD Spoof','Hackathon','Treasure Hunt','Western Dance','Closing Ceremony'];
  List Day3Venue =['Back Field','Xavier Hall','Reading Room','AV Room','Computer Lab','School Campus','Main Auditorium','Main Auditorium'];
  List Day3Timing =['8:30','8:30','9:00','9:00','9 AM - 11 AM','10:00','2:30','6:00'];
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
            TextButton(onPressed: (){}, child: const Text("Home", style: TextStyle(color: Colors.white, fontFamily: 'Xavier2')),),
            TextButton(onPressed: (){}, child: const Text("Schedule", style: TextStyle(color: Colors.white, fontFamily: 'Xavier2')), ),
            TextButton(onPressed: (){}, child: const Text("Events", style: TextStyle(color: Colors.white, fontFamily: 'Xavier2')),),
            TextButton(onPressed: (){}, child: const Text("Teams", style: TextStyle(color: Colors.white, fontFamily: 'Xavier2')),),
          ],
        ),
        centerTitle: true,

      ),
      body : Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),

        child : Column(
          children: [
            const SizedBox(height: 100),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children : const [
                          Text(
                            'SCHEDULE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 55,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/day1');
                            },
                            child: const Text(
                              'DAY 1',
                              style : TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/day2');
                            },
                            child: const Text(
                              'DAY 2',
                              style : TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontFamily: 'Xavier2',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/day3');
                            },
                            child: const Text(
                              'DAY 3',
                              style : TextStyle(
                                color: Colors.white,
                                fontSize: 27,
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
                        height: 55,
                        thickness: 2,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 100),
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'EVENTS',
                                  style : TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontFamily: 'Xavier2',
                                  ),
                                ),
                                Text(
                                  'VENUE',
                                  style : TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontFamily: 'Xavier2',
                                  ),
                                ),
                                Text(
                                  'TIMINGS',
                                  style : TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontFamily: 'Xavier2',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:
                                    Day3EventName.map((Event){
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 13),
                                        child: TextButton(
                                          onPressed: (){},
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text : '$Event\n',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 23,
                                                    fontFamily: 'Xavier2',
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: Day3Event[Day3EventName.indexOf(Event)],
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontFamily: 'Xavier2',
                                                  ),
                                                ),
                                              ],
                                            ),

                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );

                                    }).toList(),

                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    Day3Venue.map((Venue){
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 17),
                                        child: TextButton(
                                          onPressed: (){},
                                          child: Text(
                                            Venue,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontFamily: 'Xavier2',
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                    Day3Timing.map((Time){
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 17),
                                        child: TextButton(
                                          onPressed: (){},
                                          child: Text(
                                            Time,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontFamily: 'Xavier2',
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),

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
                    ]),
              ),
            ),
          ],
        ),
      ),
    );


  }

}