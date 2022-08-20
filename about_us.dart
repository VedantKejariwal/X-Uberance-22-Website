import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                  Text(
                    'ABOUT US',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.25/5*height,
                        width : (1.25/5)*height*(1.5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/LOGO FINAL.png"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 70,
                thickness: 2,
              ),


              Container(
                  child : const Padding(
                    padding: EdgeInsets.fromLTRB(70, 0, 70, 100),
                    child: Text(
                      'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm',
                      style : TextStyle(
                        color: Colors.white,
                      ),
                    ),

                  )
              ),
            ],
          ),
          ],
        ),
      ),
    ),
    );
  }

}
