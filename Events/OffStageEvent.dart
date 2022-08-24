import 'package:flutter/material.dart';

class OffStage extends StatefulWidget {
  const OffStage({Key? key}) : super(key: key);

  @override
  State<OffStage> createState() => _OffStageState();
}

class _OffStageState extends State<OffStage> {

  List OffStage1 =["images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg"];
  List OffStage2 =["images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg","images/27 Merlins.jpg"];
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
            IconButton(onPressed: (){}, icon : Icon(Icons.person),color: Colors.white,),
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
                  'EVENTS',
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

              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(255, 0, 106, 0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/onstage');
                    },
                    child: const Text(
                      'ON STAGE',
                      style : TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: 'Xavier2',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(56, 0, 56, 0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/offstage');
                    },
                    child: const Text(
                      'OFF STAGE',
                      style : TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: 'Xavier2',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(106, 0, 0, 0),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/field');
                    },
                    child: const Text(
                      'FIELD',
                      style : TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: 'Xavier2',
                      ),
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
                  padding: const EdgeInsets.fromLTRB(200, 30, 200, 100),
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:
                            OffStage1.map((offstage1){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 30),
                                child: Transform.scale(
                                  scale: 5,
                                  child: IconButton(
                                    onPressed:(){} ,
                                    icon: Image.asset(offstage1),
                                  ),
                                ),
                              );

                            }).toList(),

                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            OffStage2.map((offstage2){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 30),
                                child: Transform.scale(
                                  scale: 5,
                                  child: IconButton(
                                    onPressed:(){} ,
                                    icon: Image.asset(offstage2),
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
