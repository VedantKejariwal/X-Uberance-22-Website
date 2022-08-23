import 'package:flutter/material.dart';


class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  List Day3Event =['Event13','Event21','Event31','Event41','Event51','Event61','Event71'];
  List Day3Venue =['Venue11','Venue21','Venue31','Venue41','Venue51','Venue61','Venue71'];
  List Day3Timing =['Time11','Time21','Time31','Time41','Time51','Time61','Time71'];
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
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
            Expanded(
              child: SingleChildScrollView(
                child :Container(
                  padding: const EdgeInsets.fromLTRB(100, 30, 100, 100),
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
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:
                            Day3Event.map((Event){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 13),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    Event,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
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
                            Day3Venue.map((Venue){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 13),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    Venue,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
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
                                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 13),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    Time,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Xavier2',
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),

                        ],
                      ),
                    ],
                  ),

                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

}
