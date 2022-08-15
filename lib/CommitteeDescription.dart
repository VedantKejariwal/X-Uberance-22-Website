import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:html' as html;

late int committee;

class CommitteeDescription extends StatefulWidget {
  CommitteeDescription(int comm) {
    committee = comm;
  }

  @override
  State<CommitteeDescription> createState() => _CommitteeDescriptionState();
}

class _CommitteeDescriptionState extends State<CommitteeDescription> {
  Future<void> navigateToHome(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  List<String> images = [
    "themes/nazi communist party.jpg",
    "themes/USA.jpeg",
    "themes/Indian Conference.jpeg",
    "themes/yemen.jpeg"
  ];

  List<String> names = [
    "Joint-Securty Talks of the National Socialists German\nWorkers' Party and Union of Soviet Socialist Republics",
    "Closed Sessions of The House of\nRepresentatives of The USA",
    "Second All Parties Conference,\nIndia, 1939",
    "United Nations\nSecurity Council"
  ];

  List<String> agendas = [
    "Negotiating a diplomatic arrangement including provisions for economic cooperation and territorial expansion.",
    "The Impeachment of the President of the United States of America, 2019",
    "Combating national disharmony and achieving Independence, keeping in consideration the ramifications of all geopolitical issues affecting India.",
    "Geopolitical implications of the transfer of power in Yemen."
  ];

  List<String> descriptions = [
    "A committee that brings together two sides of the same coin, with the power hungry NAZIs going up for talks with the behemoth that is USSR. Both factions, looking to take the World by storm, hoping, with every move, to spread their roots far and wide. Every word uttered, every course of action taken, affecting the lives of millions over the Globe.\nWith the disconcerting determination of Adolf Hitler on one side and the macabre cunning of Joseph Stalin on the other, the result is impossible to previse. What is for sure, however, is that this will truly be one for the ages.",
    "A committee being held in the corridors of power of one of the world's largest superpowers- the USA. With recent discussions of the impeachment of Donald Trump, the fate of the country is at stake, and every decision matters. The House of Representatives, the Senate, and the entire Justice System, with the biggest role to play in what is about to be a major event about the most polarising presidency in US history. What happens behind closed doors, stays behind closed doors. But with all the power, politics, and influence of the people at the helm of the 50 states, it influences the lives of millions.",
    "Presided over by Pandit Madan Mohan Malaviya, this is a committee taking place in India, a country that finds itself paying dividends just to be belittled and battered by the colonists - The British Raj. Though the misfortunes have been plenty, the fire in the hearts of the pioneers of the freedom movement shines brighter than ever. With the major political forces of the country coming together to foster peace and understanding among the teeming millions and the leaders at their helms, the future of the country depends on every word said by those in the corridors of power. Will the country be united in their stand against the British Raj, or will internal power struggles lead the erstwhile golden bird to ever greater ruin?",
    "The Yemen crisis - what has been titled as one of the worst humanitarian crises only seems to be on an even darker path ahead. With countless lives lost, the death of thousands of innocent people, the violence, the decimation, and animosity has lead to the absolute and thorough ruin of the ill starred region. The division of power in the country, therefore, leads to even more confusion and apprehension on the part of those most deeply affected - the common people.\nThis committee aims to garner as much stability as possible in the region, to better the lives of the struggling thousands."
  ];

  List<List<String>> chairs = [
    ["Aritra Mookherjee"],
    ["Parikshit Roychowdhury", "Georgie Koithara"],
    ["Akash Roy"],
    ["Hreed Gupta"]
  ];

  List<List<String>> chairdesc = [
    [
      "It's been over a year since Aritra Mookherjee first annoyed us with his vision for XMUN. Naturally, everything about it revolved around him. Perhaps our greatest victory (and his too) has been in overcoming his ever-expanding MUN ego.\nA class 12 commerce student who struggles with maths as much as he struggles with speaking slowly, Aritra has clawed his way into becoming Co-Secretary General. A consistent sufferer, either due to SAT results, PES losses or Tottenham scores,  Aritra's consummate knowledge of International law, Russian secrets and often astounding work ethic has led him to a few Best Delegates and fewer friends. His twin obsessions, sitcoms and Frootis, occupy the remaining majority of his life. If you suddenly see him disappear, please assume he is on an adventure, mapping the Lake area on foot, to find his favourite Mother Dairy shop (ahem).\n\nTitle of his autobiography:\n21 similar ways of combing your hair\n\nHow to win an award:\nSend him an unlimited supply of cat stickers."
    ],
    [
      "Our in house Gandalf is finally off to college, but before going one final barrier awaits him – chairing the closed sessions of the US house of representatives. Will he pass?\nHaving amassed a myriad of accolades across every possible public speaking event, this seems a meagre task for someone who has 5 cans of Redbull a day. With a majority of his calibre stemming from his orange shoes, he is rarely seen leaving his house without them (believing it pairs well with a yellow hoodie, when he’s at the Oxford Union). Parikshit, after his failed attempts at being the secretary-general of X-MUN (he says, it was the lockdown), finds himself chairing a simpler crisis committee than his own dating life. A friendly face to turn to for any conversation on F1, When Chai Met Toast, and mechanical watches, one might want to steer clear of him when the redbull engine inevitably fails.   Often (read - always) found in Hard Rock Cafe (seemingly fighting homelessness), he insists he is only there as a prelude to “Rhodeo Time”\nTitle of his autobiography:\nHow to not get into colleges: a success story.\nHow to win an award:\nFind a way to mention Gordon Ramsay in the final paperwork",
      "Georgie loves economics so much that he created a MUN career that looks nothing short of a TVC curve. From being an internal delegate in 2018, to Secretary General in 2019, Georgie will now tick off another box, by chairing as an alumni. Georgie is a professional at many things - be it his understanding of international law, his ability to achieve unheard-of health goals or his mastery of cooking (of things we will not mention). However, beware of Georgie's talents: for him, a Best delegate is one who wins by an entire day, AND 32 points (he's done it, and if you don't do it, then kiss the trophy goodbye). Outside the committee (and, honestly, inside too), Georgie is the fun, smart guy in the room who's always willing to educate and debate with you UNLESS you force him to wear a suit."
    ],
    [
      "A supposedly hard-working individual, Akash Roy is often seen displaying his intellectual capabilities in what he considers demanding activities – failing to be a science student, insulting his juniors and reading leftist theory. Having climbed his way to the top of the Indian circuit, Akash finds himself Co-Secretary General of X-MUN only in position but deep within remains a Bob Dylan fan at heart. (Self-)acknowledged for his articulate and eloquent speaking style coupled with a rather diverse and expansive knowledge base, this Bayern Munich supporter has channelled his potential from pretending to admire Wong Kar-Wai movies and bragging about his 'indie' music tastes to working hours a day behind the successful conduction of this event. However many short jokes he faces, we know his ego can handle it.\nTitle of His Autobiography - \nAkash Roy, Magicman\nHow to Win an award -  \nQuote Car Seat Headrest songs",
    ],
    [
      "A familiar face face to those in the college circuit (for more reason than 1) our UNSC chair also prides himself on being broke(n) (again, in more places than 1). Having specialized in playing cricket with a broken back, the UN charter and the art of using Inzaghi, Hreed can successfully say his success is attributed to listening to Kishore Kumar Songs at 3 a.m.\nHis most distinct features include- struggling to make it in life even AFTER dropping science and being able to grab the gentleman's deal in remote parts of Kolkata.\n\nTitle of his autobiography: Hitchhiker's guide to College Street.\n\nHow to win an award :\nFind a way to bomb Barcelone like the Franco-led Nationalist Rbeel army."
    ]
  ];

  List<List<Widget>> imageschairs = [
    [
      Image.asset("themes/Ortro.jpeg",
          fit: BoxFit.cover, alignment: Alignment.topCenter),
    ],
    [
      Image.asset("themes/Parikshit.jpg",
          fit: BoxFit.cover, alignment: Alignment.center),
      Image.asset("themes/Georgie.jpg",
          fit: BoxFit.cover, alignment: Alignment.center),
    ],
    [
      Image.asset("themes/Akash.jpeg",
          fit: BoxFit.cover, alignment: Alignment.center),
    ],
    [
      Image.asset("themes/Hreed.jpeg",
          fit: BoxFit.cover, alignment: Alignment.center),
    ],
  ];

  List<List<String>> directors = [
    ["Ayan Acharya", "Kushal Taparia"],
    ["Gourab Saha", "Hitansh Agarwal"],
    ["Kian Sarkar", "Ojas Jha"],
    ["Attiksh Ansool Panda", "Vedant Kejariwal"]
  ];

  List<List<String>> posts = [
    ["Director", "Director"],
    ["Vice-Chair", "Director"],
    ["Director", "Director"],
    ["Director", "Assistant Director"]
  ];

  List<List<Widget>> imagesdirectors = [
    [
      Image.asset("themes/Ayan.jpg",
          fit: BoxFit.cover, alignment: Alignment.topCenter),
      Image.asset("themes/Kushal.jpg",
          fit: BoxFit.cover, alignment: Alignment.topCenter)
    ],
    [
      Image.asset("themes/Grob.jpeg",
          fit: BoxFit.cover, alignment: Alignment.center),
      Image.asset("themes/Hitan.jpeg",
          fit: BoxFit.cover, alignment: Alignment.center)
    ],
    [
      Image.asset("themes/Kian.jpg",
          fit: BoxFit.cover, alignment: Alignment.topCenter),
      Image.asset("themes/Ojas1.jpeg",
          fit: BoxFit.cover, alignment: Alignment.topCenter)
    ],
    [
      Image.asset("themes/Attiksh.jpg",
          fit: BoxFit.cover, alignment: Alignment.center),
      Image.asset("themes/Vedant.jpeg",
          fit: BoxFit.cover, alignment: Alignment.center)
    ],
  ];

  List<List<String>> directorsdesc = [
    [
      "Despite being later than most to the whole MUN thing, Ayan has managed to get himself a number of awards, through his patented blend of lobbying skills and getting executed in most of the committees he does. A self-professed 'weeb' who somehow gets failing marks despite being a humanities student, Ayan, despite having very few remarkable identifying features, has become one of the most reliable members of the Secretariat.\n\nTitle of his autobiography -\nAdvanced Humour - a guide to jokes no one gets.",
      "A man of many talents, unfortunately for Kushal, being lucky is not one of them. His familiar monotone and woes of MUNs in the past have become music to our ears, if nails on a chalkboard were considered musical. Kushal's sincerity and dedication is truly unparalleled as he sits on chair on the other side of the country and laughs at us struggling to put X-MUN together. In all seriousness, top guy with an inch-thick armour for jokes at his expense.\n\nTitle of his Autobiography-\nSpec mens: A career"
    ],
    [
      "A self-declared introvert, Gourab Saha, has spent most of his teenage life struggling to decide whether he should sleep 16 hours a day or give up on sleep for the next week (the choice often being the former only to be disrupted by a flurry of calls). Our vice Chairperson of the closed session of US House of representatives comes with a prior reputation for excelling at a variety of things, from maths all the way to receiving mbappe without fail in PES. What often goes unnoticed about this sombre individual, are his talents in navigation and babysitting (in case you ever get lost you know who to call). Having a particular knack for all things business and politics, one can find him in most MUNs and business events, though meeting him there is probably not the best idea.\n\nTitle of his Autobiography:\nThe subtle art of not waking up.",
      "You would never expect Hitansh’s name to be on the list of MUN organizers, but his sub-par website building skills come in handy. A science student with a flimsy excuse of a personality (revolving mostly around Marvel movies), Hitansh loses sleep over Virat Kohli’s form, finding investors for his fairy tale App, and having to share a college room with Vedant Kejariwal. Jokes aside, he is a man of impressive consistency: both on the computer, and the maths answer script (though recently, results may disagree). Find him at XMUN 2022, overwhelmed by the chits you send, but still maintaining his calm disposition with some chai from Arun Tea Stall.\n\nTitle of his autobiography:\nSSS: Surat, Starbucks and SAT"
    ],
    [
      "Having inherited a love of adventure and photography from his Father, Kian Sarkar, finds himself carefully treading the line of being the model student everyone looks up to and ending up homeless in a jungle alongside his camera. Listening to at least 4 albums a day, finding the craziest content on youtube, suffering because of Barcelona and still finding time to study, are a few things which constitute this PCMB student’s life. If you can't find him, be rest assured a new album has dropped.\n\nTitle of his autobiography\nRoad work ahead -  uhhh yeah I sure hope it does.",
      "Having gone through more character arcs in the past 2 years than most people go through in 2 lifetimes, Ojas presents himself as probably the most variegated member of the secretariat. Being an introvert, a bilbliophile, and an Albanian are some of the mostdistinct current characteristics of this aspiring software analyst.\nSpending most of his time on twitter while listening to Lil B classics constitutes about 70% of his day and the remainder is spent asking his dog philosophical questions, Ojas still finds just enough time to get work done when you need him to.\n\nTitle of his Autobiography-\nHow Yung Lean Changed my Life - a guide to making new friends"
    ],
    [
      "The rare science student who might just make it in life, Attiksh has been a part of our debate club for longer than almost anyone. Now passed out from school, Attiksh returns to X-MUN to do what he could never do while he was in school: contribute. Always approachable and a helpful EB member (despite his relatively few awards), Attiksh's experience is what makes him so invaluable to the Secretariat.\n\nTitle of his autobiography -\nYikes! I got into college.",
      "Vedant Kejariwal is known for two things: having the most basic tastes known to man and bragging about meeting Nita Ambani. Always hard at work, Vedant functions as the EB's comic relief (mostly when he isn't aware of it), forever trying to make his presence felt and making committee function smoother. This is a short description because there’s not much left to say about the boy, apart from the Secretariat’s hope that he has a golf tournament on the dates of the conference.\n\nTitle of his autobiography-\nFinding charity for myself, Midas style"
    ]
  ];

  List<String> imagescommittees = [
    "Hitler-Stalin Cabinet",
    "House of Representatives",
    "Indian Committee",
    "United Nations Security Council"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Image.asset(
                'themes/logo.png',
                fit: BoxFit.contain,
                height: 50,
              ),
              onPressed: () {
                navigateToHome(context);
              },
            ),
            Container(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  'X-MUN 22',
                  style: TextStyle(
                      fontSize: 17, color: Colors.black, fontFamily: "heading"),
                ))
          ],
        ),
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 0.03 * MediaQuery.of(context).size.height,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 0.01 * MediaQuery.of(context).size.width,
                    ),
                    Stack(children: [
                      Container(
                        height: 0.6 * MediaQuery.of(context).size.height,
                        width: 0.98 * MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffff6961),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 0.01 * MediaQuery.of(context).size.height,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width:
                                    0.007 * MediaQuery.of(context).size.width,
                              ),
                              SizedBox(
                                height:
                                    0.58 * MediaQuery.of(context).size.height,
                                width: 0.96 * MediaQuery.of(context).size.width,
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset(images[committee],
                                        fit: BoxFit.cover),
                                    ClipRRect(
                                      // Clip it cleanly.
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 2, sigmaY: 2),
                                        child: Container(
                                          color: Colors.black.withOpacity(0.6),
                                          alignment: Alignment.center,
                                          child: Text(
                                              names[committee] +
                                                  "\nAgenda: " +
                                                  agendas[committee],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 0.023 *
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height,
                                                  color: Colors.white,
                                                  fontFamily: "heading")),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ]),
                  ],
                ),
                SizedBox(
                  height: 0.1 * MediaQuery.of(context).size.height,
                ),
                SizedBox(
                    width: 0.7 * MediaQuery.of(context).size.width,
                    child: Text(
                      descriptions[committee],
                      style: TextStyle(
                          fontSize: 0.025 * MediaQuery.of(context).size.height,
                          color: Colors.white,
                          fontFamily: "body"),
                    )),
                SizedBox(
                  height: 0.1 * MediaQuery.of(context).size.height,
                ),
                Text(
                  "Executive Board",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "heading",
                      color: Colors.white,
                      fontSize: 0.1 * MediaQuery.of(context).size.height),
                ),
                SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < chairs[committee].length; i++)
                      FlatButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    scrollable: true,
                                    backgroundColor: Colors.black,
                                    title: Text(
                                      chairs[committee][i] +
                                          "\n" +
                                          "Chairperson",
                                      style: TextStyle(
                                          fontFamily: "heading",
                                          color: Colors.white),
                                    ),
                                    content: Text(
                                      chairdesc[committee][i],
                                      style: TextStyle(
                                          fontFamily: "body",
                                          color: Colors.white),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text(
                                            "OK",
                                            style: TextStyle(
                                                fontFamily: "body",
                                                color: Colors.white),
                                          ))
                                    ],
                                  ));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 0.5 * MediaQuery.of(context).size.height,
                              width: 0.3 * MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffff6961),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 *
                                          MediaQuery.of(context).size.width,
                                      height: 0.4 *
                                          MediaQuery.of(context).size.height,
                                      child: imageschairs[committee][i],
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: 0.02 *
                                        MediaQuery.of(context).size.height),
                                Row(
                                  children: [
                                    Text(
                                      chairs[committee][i] + "\nChairperson",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "heading",
                                        fontSize: 0.015 *
                                            MediaQuery.of(context).size.height,
                                      ),
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
                SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < directors[committee].length; i++)
                      FlatButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    scrollable: true,
                                    backgroundColor: Colors.black,
                                    title: Text(
                                      directors[committee][i] +
                                          "\n" +
                                          posts[committee][i],
                                      style: TextStyle(
                                          fontFamily: "heading",
                                          color: Colors.white),
                                    ),
                                    content: Text(
                                      directorsdesc[committee][i],
                                      style: TextStyle(
                                          fontFamily: "body",
                                          color: Colors.white),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: Text(
                                            "OK",
                                            style: TextStyle(
                                                fontFamily: "body",
                                                color: Colors.white),
                                          ))
                                    ],
                                  ));
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 0.5 * MediaQuery.of(context).size.height,
                              width: 0.3 * MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffff6961),
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 0.28 *
                                          MediaQuery.of(context).size.width,
                                      height: 0.4 *
                                          MediaQuery.of(context).size.height,
                                      child: imagesdirectors[committee][i],
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: 0.02 *
                                        MediaQuery.of(context).size.height),
                                Row(
                                  children: [
                                    Text(
                                      directors[committee][i] +
                                          "\n" +
                                          posts[committee][i],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "heading",
                                        fontSize: 0.015 *
                                            MediaQuery.of(context).size.height,
                                      ),
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
                SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                Text(
                  "Click on photos to know more!",
                  style: TextStyle(fontFamily: "body", color: Colors.white),
                ),
                SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
