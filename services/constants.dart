// ignore_for_file: non_constant_identifier_names

import'../pages/event_description.dart';
List Day1Event =['Event1','Event2','Event3','Event4','Event5','Event6','Event7','Event1','Event2','Event3','Event4','Event5','Event6','Event7'];
List Day1Venue =['Venue1','Venue2','Venue3','Venue4','Venue5','Venue6','Venue7','Venue1','Venue2','Venue3','Venue4','Venue5','Venue6','Venue7'];
List Day1Timing =['Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1','Time1'];
List Day2Event =['Event1','Event2','Event3','Event4','Event5','Event6','Event7'];
List Day2Venue =['Venue1','Venue2','Venue3','Venue4','Venue5','Venue6','Venue7'];
List Day2Timing =['Time2','Time2','Time2','Time2','Time2','Time2','Time2'];
List Day3Event =['Event1','Event2','Event3','Event4','Event5','Event6','Event7'];
List Day3Venue =['Venue1','Venue2','Venue3','Venue4','Venue5','Venue6','Venue7'];
List Day3Timing =['Time3','Time3','Time3','Time3','Time3','Time3','Time3'];
List Sporting1 =["X-GOAL","X-HOOP","X-PONG","X-SPIKE","X-PULL","X-MATE","X-WICKET","X-FIFA",];
List Offstage1 = ["X-QUIZITE" , "X-GAANA","X-SPLASH","X-TRIAL", "X-30","X-CALIBRE","X-BID" , "X-HUNT","X-CODE","X-SNAP","X-MONTAGE","X-BET",];
List Onstage1 = [ "X-60","X-ABHINOY","X-ACT","X-DROP", "X-RHYME","X-RAGA", "X-HOP","X-TRAVAGANCE","X-ACOUSTIC","X-PUN","X-VOGUE", ];
List<Eventss> Sporting = [
  Eventss(name: "X-GOAL", about: "FOOTBALL", category: "SPORTING", location: "BACK  FIELD", day: "2", time: "8:30", participants: "7+3 (SUBSTITUTES)", phrase: "Scoring goals is not as easy as Ronaldo shows it. SIIIIIUUUUUU!",
      rules: """Football is a game involving two teams who try to manoeuvre the ball into the other team's goal..

1. No. of participants : 7+3(substitutes)

2. Duration : 15 mins a half 

3. Separate event for boys and girls . 

4. Tournament will be on a knockout basis .

5. Participants must carry their school jerseys with their school logo on it and number mandatory.

6. If the match ends in a draw , penalty shootouts will take place. 

7. Roll in substitutions will be allowed 

8. Referee’s decision is final and binding.

""",
      link: "images/X-GOAL"),

  Eventss(name: "X-HOOP", about: "BASKETBALL", category: "SPORTING", location: "BASKETBALL COURT", day: "1", time: "12:30", participants: "5+5", phrase: "Dunk like Lebron, Shoot like Larry.",
    rules: """Basketball is a team sport in which two teams compete with the objective of shooting a basketball through the defender's hoop, while preventing the opposing team from shooting through their own hoop.

1. No. of participants : 5+5

2. Duration : 2 halves of 10 mins each 

3. Separate event for boys and girls

4. Tournament will be on knockout basis 

5. Participants must carry their school jerseys with their school logo and jersey numbers (mandatory) on it .

6. Jersey number should remain same throughout the tournament 

7. Roll in substitutions will be allowed. 

8. Each team can take one timeout per half ( 1 min ) 

9. Referee’s decision is final and binding.


""",
    link: "images/X-HOOP",),

  Eventss(name: "X-PONG", about:"TABLE TENNIS", category: "SPORTING", location: "Games Room", day: "1", time: "1:00", participants: "", phrase: "A table where you actually play.",
      rules: """Table tennis, also known as ping-pong, is a sport in which two or four players hit a lightweight ball, also known as the ping-pong ball, back and forth across a table using small solid rackets. The game takes place on a hard table divided by a net.

1. No.of participants : 4 ( 2 singles , 1 doubles ) 

2. Separate event for boys and girls.

3. No individual matches. All matches will be played in teams format. 

4. All Matches will be best of 3 and out of 11 points.

5. Rules and regulations of TTFI will be followed .

6. Semi-Finals and Finals will be best of 5 ( 2 singles , 1 doubles , 2 reverse singles ) 

7. Participants will have to bring their own racquets .

8. Referee’s decision is final and binding. 

""",
      link: "images/X-PONG"),

  Eventss(name: "X-SPIKE", about:"VOLLEYBALL", category: "SPORTING", location: "Back Field", day: "3", time: "8:30", participants: "", phrase: "Can’t let the ball bounce.",
      rules: """Volleyball, Game played by two teams of six players each, in which an inflated ball is volleyed over a high net. Each team tries to make the ball touch the court within the opposing side's playing areas before it can be returned. A team is allowed to touch the ball three times before returning it.


1. No. of participants : 6+3(substitutes) 

2. Separate event for boys and girls.

3. Each game will have 3 sets of 11 points each.

4. Finals will have 3 sets of 15 points each.

5. Players cannot substitute between a set .

6. Participants will have to carry their school jerseys with the school logo on it.
 

""",
      link: "images/X-SPIKE"),

  Eventss(name: "X-PULL", about:"TUG OF WAR", category: "SPORTING", location: "Primary School Field", day: "1", time: "12:30", participants: "", phrase: "A sport where eating burgers helps.",
      rules: """Tug of war is a sport that pits two teams against each other in a test of strength: teams pull on opposite ends of a rope, with the goal being to bring the rope a certain distance in one direction against the force of the opposing team's pull.

1. No. of participants : 10+2(substitutes)

2. No spikes allowed .

3. Separate event for boys and girls.

4. Participants will have to carry their school jerseys with the school logo on it.

5. Other rules will be mentioned on spot.


""",
      link: "images/X-PULL"),

  Eventss(name: "X-MATE", about:"CHESS", category: "SPORTING", location: "Big Parlour", day: "2", time: "8:30", participants: "", phrase: "Another battle between the colours.",
      rules: """Chess is a board game played between two players.. The current form of the game emerged in Spain and the rest of Southern Europe during the second half of the 15th century after evolving from chaturanga, a similar but much older game of Indian origin.
 
1. No. of participants : 2 ( Teams may consist both boys and girls ) 

2. Duration : 15 mins each match for a maximum of 5 rounds 

3. Format : Rapid 

4. All the rules of FIDE will be followed . 

5. Arbitrary decisions will be final and binding . 

6. One team per school is allowed.


""",
      link: "images/X-MATE"),

  Eventss(name: "X-WICKET", about: "BOX CRICKET", category: "SPORTING", location: "Basketball Court", day: "2", time: "8:30", participants: "", phrase: "When will Kohli score his 71st Century?",
      rules: """Indoor cricket or box cricket involves two teams with 6-8 players each playing in a closed space, usually a net-covered turf. Most matches are played within an hour's time frame with rules set before the game or tournament.

1. No. of participants 8 + 2 (rolling substitutes) + 3 (normal substitutes)

2. Players are requested to carry their own bats and gloves.

3. AD guard is mandatory.

4  Separate event for boys and girls.

5. Innings will be of 5 overs (each bowler is allowed to bowl a maximum of 1 over.).

6. Other rules to be given on the day of the event.

7. Rules are subject to change.

8. Umpire decision is final and binding.
""",
      link: "images/X-WICKET"),

  Eventss(name: "X-O☐Δ", about: "FIFA", category: "SPORTING", location: "AV Room", day: "2", time: "9:00", participants: "", phrase:"EA SPORTS IT'S IN THE GAME!",
      rules: """Fifa is a popular Esports game played throughout the world. It has special rights purchased by EA which allows it to retain its name, which is kept after the biggest football tournament; Fifa World Cup.

1. No. of participants : 1+1

2. Rolling substitutions are allowed .

3. Duration : 6 mins a half Matches will be held on PS4 . 

4. Tournament will be held on a knockout basis.

5. If a match ends in a draw , penalties will decide the winner. 

6. Other rules to be mentioned on spot .

8. Umpire decision is final and binding.
""",
      link: "images/X-FIFA"),


];

List<Eventss> OffStage = [
  Eventss(name: "X-QUIZITE", about: "QUIZ", category: "OFF-STAGE", location: "Reading Room", day: "2", time: "12:30", participants: "", phrase:"Where a smart answer wont get you fired. (iykyk)",
      rules: """A quiz can be defined as a game or brain teaser to test knowledge. It can contain an element of competition when participants play against each other to get the highest score, which makes helps participants become more engaged

1. No. of participants: 4

2. No. of rounds : 2 

3. First round will be a written preliminary round. 

4. Second round will be the finals . 

5. Further rules will be explained by the Quizmaster before the event. 

""",
      link: "images/X-QUIZITE"),

  Eventss(name: "X-GAANA", about: "ANTAKSHARI", category: "OFF-STAGE", location: "Xavier Hall", day: "1", time: "1:00", participants: "", phrase:"X se gaao! X se!",
      rules: """Antakshari is a spoken parlour game played in India. Each contestant sings the first verse of a song that begins with the consonant of Hindi alphabet on which the previous contestant's song ended. There are many other interesting ways to play.

1. No. of participants: 2

2. No. of rounds: 3 (One Written Preliminary Round and 2 Final Rounds)

3. Language: Only Hindi Songs will be used

4. The rest of the rules will be given by the judges.

""",
      link: "images/X-GAANA"),

  Eventss(name: "X-SPLASH", about: "SKETCHES AND SPRAY PAINTING", category: "OFF-STAGE", location: "Games Room", day: "2", time: "9:00", participants: "", phrase:"The EARTH without ART is “EH”!!",
      rules: """Sketch, traditionally a rough drawing or painting in which an artist notes down his preliminary ideas for a work that will eventually be realised with greater precision and detail. t.Spray painting is a painting technique in which a device sprays coating material (paint, ink, varnish, etc.) through the air onto a surface. 

1. Participants: 1+1

2. Number of Rounds: 2 (One for Sketches and One for Spray Painting)

3. Flex will be provided. Participants need to bring their own stationeries.

4. Theme to be provided later.

5. Use of obscene imagery will lead to disqualification.

""",
      link: "images/X-SPLASH"),

  Eventss(name: "X-TRIAL", about: "MOOT COURT", category: "OFF-STAGE", location: "AV Room", day: "2", time: "2:00", participants: "", phrase:"When losing the case, find a loophole.",
      rules: """Moot court involves simulated proceedings before an appellate court, arbitral tribunal, or international dispute resolution body. These are different from mock trials that involve simulated jury trials or bench trials..

1. Participants: 2

2. Number of Rounds: 3; Duration of Arguments: 3 + 1 minutes

3. The First and Second Case will be provided a day prior to the event. The third case(Final Round) will be provided on the day of the event by the judges.

4. All laws and judicial references are to be made according to the Indian Constitution, other relevant laws and precedents of the Indian Judicial Bodies.

5. Mode of Communication: English and the Judges are to be addressed as “Your Lordships”.

6. Use of unparliamentary language can lead to disqualification.

""",
      link: "images/X-TRIAL"),

  Eventss(name: "X-30", about: "EXTEMPORE - HALF A MINUTE", category: "OFF-STAGE", location: "AV Room", day: "1", time: "1:30", participants: "", phrase:"You can speak well, if your tongue can deliver the message of your heart.",
      rules: """It tests the person's fluency and linguistic ability as one gets almost no time to prepare and has to start speaking as soon as the topic is provided. Even a slight pause may lead to deduction of points.

1. No. of participants : 1

2. Mode of language will be English . 

3. Duration : 30 seconds 

4. Unparliamentary language will lead to immediate disqualification. 

5. Topics will be decided via lucky draw .

6. Judging criteria : Delivery , content , body language , creativity . 

""",
      link: "images/X-30"),

  Eventss(name: "X-CALIBRE", about: "DEBATE", category: "OFF-STAGE", location: "Xavier Hall", day: "3", time: "8:30", participants: "", phrase:"Don't raise your voice, raise your stance.",
      rules: """Knowledge increases on being shared. Share your arguments and let the judges decide which is more convincing.

1.  Participants: 3 member teams per school

2.  The debate will follow Asian Parliamentary Debate rules.

3.  Mode of communication: English, vernacular allowed, however discouraged.

4.  All rounds will be on a knockout basis.

5.  The motion will be given a day before the event. (only for quarterfinals)

6.  The motion will be given 30 minutes before the round ( for semifinals and finals).

7.  Preparation to be done in the reading room before the event

8.  Format: Each speaker will be given 3 minutes on the floor, the teams are to collectively present their arguments following which after both the teams are done speaking, we will enter a question answer session for two questions a teams.

9.  Judging criteria: Oratory,content, rhetoric, argumentation.

10. Rules are subject to changes.

""",
      link: "images/X-CALIBRE"),

  Eventss(name: "X-BID", about: "IPL AUCTION", category: "OFF-STAGE", location: "Reading Room", day: "3", time: "9:00", participants: "", phrase:"What is the similarity between Siddhant Malhotra and Shikhar Dhawan? They have both been dropped.",
      rules: """The IPL auction is a yearly event conducted by BCCI to auction the cricket players to various franchises.This will be a simulation to the same where a team has to be built and it has to be further pitched to the judges for value and sponsors.

1. Participants: 2

2. Players List will be provided a day prior to the event.

3. Laptops will be allowed.

4. Number of rounds: 2 (Bidding Round and Q&A Session)

5. Number of Players: 11+2

""",
      link: "images/X-BID"),

  Eventss(name: "X-HUNT", about: "TREASURE HUNT", category: "OFF-STAGE", location: "School Campus", day: "3", time: "10:00", participants: "", phrase:"Find the X.",
      rules: """A treasure hunt is a game in which the organisers prepare a list defining specific items, which the participants seek to gather or complete all items on the list, usually without purchasing them.

1. No. of participants: 2

2. Each school can employ the use of the school reps assigned to them to explore the school campus for clues.

""",
      link: "images/X-HUNT"),
   Eventss(name: "X-CODE", about: "HACKATHON", category: "OFF-STAGE", location: "Computer Lab", day: "1-3", time: "", participants: "", phrase:"“If the outside is so good, why has man spent thousands of years trying to perfect the inside?”",
        rules: """A hackathon, also known as a codefest, is a social coding event that brings computer programmers and other interested people together to improve upon or build a new software program. The word hackathon is a portmanteau of the words hacker, which means clever programmer, and marathon, an event marked by endurance.

1. No. of participants: 2

2. Each participant has to bring their own device.

3.All participants need to develop an app or a website.

4.The topic will be provided a day prior to the event.

5.Submission will be on the third day followed by a Q&A Session.

6.Code Reusability and references from online sources are allowed, plagiarism will not be tolerated.

7.Judging Criteria: Originality, Design, Functionality

8.The event will be held offline and the rest of the rules will be provided later.

""",
        link: "images/X-CODE"),

  Eventss(name: "X-SNAP", about: "PHOTOGRAPHY", category: "OFF-STAGE", location: "School Campus", day: "1 & 2", time: "Full Day", participants: "", phrase:"Photography is an art where Earth is the canvas. It is limitless and the skill of a photographer brings forth its beauty.",
      rules: """
1.  Number of participants- 2 per school (classes 11-12)

2.  Duration- 120 mins + 30 mins + 30 mins

3.  4 themes will be given out of which participants can choose any 2 themes (Theme to be given on spot)

4.  Pictures have to be submitted in raw format.

5.  4 pictures per school (2 per theme)

6.  Submissions have to be done via a pendrive.

7.  Only DSLRs, SLRs and mirrorless cameras are allowed.

8.  Basic editing like touch-ups will be accepted, using filters and presets is not allowed.

9.  All necessary equipment like cameras, laptops, pen drives, are to be carried by the participants, the host school is not responsible for the loss of any such belongings.

10. Participants have to provide a relevant caption for every picture submitted.

11. Participants will be asked to present their pictures and explain their ideas and the technical aspects. Questions will be asked by the judges.

12. Judging criteria include composition, lighting, creativity, and relevance to theme.

""",
      link: "images/X-SNAP"),

  Eventss(name: "MONTAGE", about: "VLOGGING", category: "OFF-STAGE", location: "School Campus", day: "1-2", time: "All day", participants: "",
      phrase:"""
Welcome to my youtube channel!
Check out the link in the description.

        """,
      rules: """Vlog stands for a video blog or video log, and refers to a type of blog where most or all of the content is in a video format.

1.  Number of participants- 2 per school (classes 9-12)

2.  Vlog genre- infotainment.

3.  Vlog duration- 5 to 6 mins

4.  Theme will be covering the fest on the first day (broad coverage of the fest is expected).

5.  Submission has to be done by 11 AM next day

6.  Vlog has to be in english, no vernacular language is to be used.

7.  All sorts of shooting equipments are allowed (GoPros, DSLRs, etc)

8.  Background music can be used, any clip/footage/music used has to be original and should not infringe on any copyright. Usage of inappropriate/ plagiarised content will lead to immediate disqualification.

9.  If someone does not give their explicit consent to being recorded, participants must respect their decision.

10. Participants can attend any event and record clips for the vlog without disturbing the audience and participants of that event

11. The vlog should be uploaded to google drive and the link is to be shared for the same for submission.


""",
      link: "images/X-MONTAGE"),

  Eventss(name: "X-BET", about: "REPRESENTATIVE EVENTS", category: "OFF-STAGE", location: "Online", day: "Pre-Fest", time: "", participants: "", phrase:"Don't play the odds, play the man.",
      rules: """The watermark of X-Uberance. Exclusivity is what makes it fun.

1. Participants: School Representatives

2. Each participant will be provided with 1000 X-BET Coins which they can place on any event of their liking.

3. Winner will be decided by the return they get on their investments

""",
      link: "images/X-BET"),
];


List<Eventss> OnStage = [
  Eventss(name: "X-60", about: "ONE MINUTE TO FAME", category: "ON-STAGE", location: "Big Parlour", day: "2", time: "8:30", participants: "", phrase:"Race against the clock. A minute is all you have got.",
      rules: """60 Seconds to Fame is an event where participants are required to submit their videos performing some activities. The whole idea of the event is to provide students with a platform to showcase their talent.

1. No. of participants : 1 

2. Any sort of uncultured behaviour will lead to immediate disqualification . 

3. Judging criteria : Creativity , content , innovation . 

""",
      link: "images/X-60"),

  Eventss(name: "X-ABHINOY", about: "BENGALI PLAY", category: "ON-STAGE", location: "Main Auditorium", day: "1", time: "12:30", participants: "", phrase:"Directing and acting can enrich our history and culture.",
      rules: """Street play involves presentation in outdoor public spaces without a specific and paying audience but a fairly large group. These spaces can be anywhere, including malls, car parks, street corners etc.Street theatre is a form of theatrical performance and presentation in outdoor public spaces without a specific paying audience.

1. No. of participants : 4+2 

2. Duration : 5+2 minutes

3. Topics will be given later . 

4. Mode of language will be Bengali only .

5. Judging criteria : Originality , script , content , expressions , audience reaction , delivery 

6. Use of obscene language and gestures will lead to immediate disqualification.

""",
      link: "images/X-ABHINOY"),
  Eventss(name: "X-ACT", about: "AD-SPOOF", category: "ON-STAGE", location: "AV Room", day: "3", time: "9:00", participants: "", phrase:"Kya aapke toothpaste mein namak hai?!",
      rules: """A parody advertisement is a fictional advertisement for a non-existent product, either done within another advertisement for an actual product, or done simply as parody of advertisements—used either as a way of ridiculing or drawing negative attention towards a real advertisement or such an advertisement's subject, or as a comedic device, such as in a comedy skit or sketch

1. No. of participants: 5 + 2

2. Duration : 4+2 minutes

3. Topics will be allotted via lucky draw.

4. Use of vernacular is allowed , however discouraged.

5. Judging criteria : Originality , script , content , expressions , audience reaction , delivery

6. Use of obscene language and gestures will lead to immediate disqualification.

7. Schools have to bring their own props. 

""",
      link: "images/X-ACT"),
  Eventss(name: "X-DROP", about: "RAP BATTTLE & BEATBOXING", category: "ON-STAGE", location: "Soumitra Sadan", day: "1", time: "1:30", participants: "", phrase:"Apna time aayega!",
      rules: """Battle rap is a type of rapping performed between two or more performers that incorporates boasts, and wordplay. Battle rap is often performed or freestyled spontaneously in live battles, "where MCs will perform on the same stage to see who has the better verses", although it can also appear on studio albums.

1. No. of participants: 1 + 1 (1 Rapper and 1 Beatboxer)

2. Use of both participants is not necessary. Either a rapper or a beatboxer can also perform.

3. Duration: 1.5 + 1 minute

""",
      link: "images/X-DROP"),
  Eventss(name: "X-RHYME", about: "SLAM POETRY", category: "ON-STAGE", location: "Reading Room", day: "2", time: "9:00", participants: "", phrase:"People don’t remember the characters, they only remember the poets.",
      rules: """Slam poetry, a form of performance poetry that combines the elements of performance, writing, competition, and audience participation. It is performed at events called poetry slams, or simply slams. The name slam came from how the audience has the power to praise or, sometimes, destroy a poem and from the high-energy performance style of the poets.

1. Participants: 1

2. Duration: 1 + 1 minutes

3. Theme will be provided one hour prior to the event.

4. Language: English

5. Judging criteria: Originality, delivery, content.

6. Use of offensive languages will lead to disqualification.

""",
      link: "images/X-RHYME"),
  Eventss(name: "X-RAGA", about: "EASTERN MUSIC", category: "ON-STAGE", location: "Xavier Hall", day: "2", time: "12:00", participants: "", phrase:"Where words fail, music speaks",
      rules: """Eastern classical music is essentially homophonic meaning that it focuses on melodies created by using an arrangement of notes. Its magic is experienced through the use of different melodies created within the structure of ragas.

1. Participants: 6 + 4

2. Participants have to bring their own instruments.

3. Duration of Performance: 6 + 3

4. Semi-classical Bollywood songs are allowed. (Subject to judges discretion)
""",
      link: "images/X-RAGA"),
  Eventss(name: "X-HOP", about: "DANCE FACE OFF", category: "ON-STAGE", location: "Gymnasium Podium", day: "1", time: "12:30", participants: "", phrase:"When in doubt, dance it out!",
      rules: """Dance Face-Off involves two individual dancers competing against each other in one-on-one battles.It is a competition, or a round in a competition, in which a number of dancers compete against each other until a winner is declared..

1. Participants: 1 + 1

2. The event will be following the knockout format.

3. Duration: 1 minute + 30 seconds

4. Commandos will be allowed in the finals. (Optional and no extra points will be provided for this)

5. Inappropriate Clothing can lead to disqualification. Participants, if needed, have to bring their own props.

""",
      link: "images/X-HOP"),
  Eventss(name: "X-TRAVANGANCE", about: "WESTERN DANCE", category: "ON-STAGE", location: "Main Auditorium", day: "3", time: "2:30", participants: "", phrase:"Jackson not Jordan!",
      rules: """Dance is a performing art form consisting of sequences of movement, either improvised or purposefully selected. This movement has aesthetic and often symbolic value.

1. Participants: 6+4. 6 participants to be present on stage at all times.

2. Duration: 5+3.

3. No inappropriate lyrics to be included in the song used for the performance.

4. Participants have to bring their own props, if needed.

5. All the tracks to be played will have to be sent to the fest’s official email address a week before the fest. 

6. Objectionable costumes will lead to immediate disqualification.

""",
      link: "images/X-TRAVANGANCE"),
  Eventss(name: "X-ACOUSTIC", about: "WESTERN MUSIC", category: "ON-STAGE", location: "Main Auditorium", day: "2", time: "2:00", participants: "", phrase:"Professional bathroom singers finally have a chance to showcase their talents.",
      rules: """Western music is a form of country music composed by and about the people who settled and worked throughout the Western United States and Western Canada. Western music celebrates the lifestyle of the cowboy on the open ranges, Rocky Mountains, and prairies of Western North America.

1. Participants: 5+3. 5 participants to be present on stage at all times.

2. Duration: 6+4.

3. Participants will have to bring their own instruments. Acoustic drums and sound system will be provided.

4. No pre-recorded music shall be allowed.

5. Vulgar lyrics will lead to immediate disqualification.
""",
      link: "images/X-ACOUSTIC"),
  Eventss(name: "X-PUN", about: "STAND UP", category: "ON-STAGE", location: "Main Auditorium", day: "2", time: "10:00", participants: "", phrase:"Scuse me! Brudda? Brudda idhar",
      rules: """Stand-up comedy is a comedic performance to a live audience in which the performer addresses the audience directly from the stage. The performer is known as a comedian, comic or stand-up.
Stand-up comedy consists of one-liners, stories, observations or a shtick that may incorporate props, music, magic tricks or ventriloquism.

1. Participants: 1

2. Duration : 3+1

3. All genres of comedy are allowed.

4. Language: English

5. No puns to be made on sensitive topics, no vulgar gestures allowed, if performed will lead to immediate disqualification.

""",
      link: "images/X-PUN"),
  Eventss(name: "X-VOGUE", about: "FASHION SHOW", category: "ON-STAGE", location: "Main Auditorium", day: "1", time: "4:30", participants: "", phrase:"Make the stage your world, Make the world your Runway.",
      rules: """Fashion is a form of self-expression and autonomy at a particular period and place and in a specific context, of clothing, footwear, lifestyle, accessories, makeup, hairstyle, and body posture.

1. Participants 8+2 (including backstage)

2. Duration 6+2

3. All the tracks to be played will have to be sent to the fest’s official email address a week before the fest.

4. Themes to be decided via lucky draw basis and to be informed in the reps meet.

5. Rules are subject to change

6. All attire and apparels must follow norms of decency.

7. Judging criteria: relevance to theme, coordination, rampwalk, vibrancy.

""",
      link: "images/X-VOGUE"),
];