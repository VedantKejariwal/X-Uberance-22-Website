import 'dart:ui';

import 'package:date_count_down/countdown.dart';
import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    List<int> date = <int>[6, 24];
    return Container(
        child: Scrollbar(
      child: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
                height: 0.8 * MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.red.shade900,
                child: Image.asset(
                  'themes/Landing Page.png',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0.15 * MediaQuery.of(context).size.height,
                  ),
                  SizedBox(
                    height: 0.3 * MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "themes/XMUN.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "X-MUN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 0.04 * MediaQuery.of(context).size.height,
                        color: Colors.white,
                        fontFamily: "heading"),
                  ),
                  CountDownText(
                    due: DateTime.utc(2022, 6, 26, 18, 30),
                    finishedText: "00:00:00",
                    showLabel: true,
                    longDateName: true,
                    secondsTextLong: "",
                    minutesTextLong: " : ",
                    hoursTextLong: " : ",
                    daysTextLong: " : ",
                    style: TextStyle(
                      fontSize: 0.06 * MediaQuery.of(context).size.height,
                      color: Colors.white,
                      fontFamily: "heading",
                    ),
                  )
                ],
              ),
            ),
          ]),
          Container(
            height: 0.005 * MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            height: 0.6 * MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('themes/school.jpg', fit: BoxFit.cover),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                      alignment: Alignment.center,
                      child: Text('St. Xavier\'s Collegiate School',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  0.04 * MediaQuery.of(context).size.height,
                              color: Colors.white,
                              fontFamily: "heading")),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
          SizedBox(
            width: 0.7 * MediaQuery.of(context).size.width,
            child: Text(
              "St. Xavier’s Collegiate School was established in 1860 in Kolkata, India by missionaries of the Society of Jesus. The school is named after St. Francis Xavier. The School, whose alumni range from the Nobel laureate Rabindranath Tagore to the former Indian cricket captain Sourav Ganguly, is widely regarded as one of India’s most prestigious institutions, and has been described by the British writer Dennison Berwick as the “Harrow on the Hooghly”. In 2010, St Xavier’s completed 150 years.",
              style: TextStyle(
                  fontFamily: "body",
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
          SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
          Container(
            height: 0.005 * MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Container(
            height: 0.6 * MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('themes/Secgen.jpeg', fit: BoxFit.cover),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                      alignment: Alignment.center,
                      child: Text('Secretary-General\'s Address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  0.04 * MediaQuery.of(context).size.height,
                              color: Colors.white,
                              fontFamily: "heading")),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 0.7 * MediaQuery.of(context).size.width,
                child: Text(
                  "Greetings from the Secretariat!\n\nIt is our greatest pleasure to welcome you to the 7th edition of St. Xavier's Collegiate School Model United Nations Conference (X-MUN'22).\nX-MUN has always endeavoured to provide an opportunity to all new comers to shine and for veterans to prove their mettle.\nFor the past two years, dealing with the pandemic has been hard on us all, which resulted in most schools enterprisingly conducting events online. With the severity of the situation decreasing and life returning back to normal, we decided to try to make those events offline again.\nThis year, at X-MUN, we are back on our campus, ready to host you on the 27th, 28th and 29th of June.\nFrom dealing with the situation in Yemen, one of the most troubling humanitarian crisis in the world today, we travel to the United States to deliberate on the impeachement of the most powerful person in the world from where we take a journey back in time, negotiating a treaty which affected all of world history as we know it while also choreographing the struggle for the very creation of a modern India. This year, X-MUN has it all.\nYou stand where many have stood before you, with the opportunity to learn how the world works and has worked, and just maybe shape the way it will work in the future. The ability to speak eloquently and the ability to think without bias are fundamental to a person's character. At X-MUN '22, we endeavour to provide a platform for budding debaters to do just that.\n\nLegaturm vitit, the legacy lives on...\nAritra Mookherjee and Akash Roy,\nCo-Secretary Generals,\nX-MUN '22.",
                  style: TextStyle(
                      fontFamily: "body",
                      color: Colors.white,
                      fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.3 * MediaQuery.of(context).size.height,
          ),
        ]),
      ),
    ));
  }
}
