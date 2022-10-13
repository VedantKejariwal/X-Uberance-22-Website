import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatefulWidget {
  String name;
  String des;
  String mapLink;
  String loc;
  String floor;

  Location(
      {Key? key,
        required this.name,
        required this.des,
        required this.mapLink,
        required this.loc,
        required this.floor})
      : super(key: key);

  @override
  State<Location> createState() =>
      _LocationState(name: name, des: des, mapLink: mapLink, loc: loc, floor: floor);
}

class _LocationState extends State<Location> {
  String name;
  String des;
  String mapLink;
  String loc;
  String floor;

  _LocationState(
      {Key? key,
        required this.name,
        required this.des,
        required this.mapLink,
        required this.loc,
        required this.floor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(

          children: [
            const SizedBox(height: 90),
            Expanded(
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 0.043 * width,
                                  fontFamily: 'Xavier2',
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                des,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 0.02 * width,
                                  fontFamily: 'Xavier2',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          Text(
                            'LOCATION: $loc',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.02 * width,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'FLoor:  $floor',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.02*width,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        children: [
                          InteractiveViewer(
                            child: Container(
                              height: 2344/3.5,
                              width: 1810/3.5,
                              child: Image.asset(mapLink+".png",fit: BoxFit.contain),
                            ),
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.zoom_in),
                              style:
                              ButtonStyle(foregroundColor:MaterialStateProperty.all<Color>(Colors.white)),
                              label: Text(
                                'Pinch to zoom in',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Xavier3',
                                    fontSize: 0.02 * height),
                              )),
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
