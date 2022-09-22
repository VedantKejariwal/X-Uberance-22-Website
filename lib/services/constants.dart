import'../pages/event_description.dart';
List Day1Event =['X-Enter','X-Montage','X-Snap','X-Code','X-Goal','X-Pull','X-Hoop','X-Abhinoy','X-Hop','X-Calibre','X-Gaana','X-Pong','X-Drop','X-60','X-30','X-Vogue'];
List Day1Venue =['Main Auditorium','School Campus','School Campus','Computer Lab','Back Field','Front Field','Basket Ball Court','Main Auditorium','Gymnasium Podium','Reading Room','Xavier Hall','Games Room','Soumitra Sadan','Big Parlour','AV Room','Main Auditorium'];
List Day1Timing =['11 AM - 12 PM','Full Day','Full Day','12:00','12:30','12:30','12:30','12:30','12:30','12:30','1:00','1:00','1:30','1:30','1:30','4:30'];

List Day2Event =['X-Montage','X-Snap','X-Goal','X-Wicket','X-Mate','X-Code','X-Splash','X-Pull','X-','X-Rhyme','X-Pun','X-Raga','X-Quizite','X-Trial','X-Acoustic'];
List Day2Venue =['School Campus','School Campus','Back Field','Basket Ball Court','Big Parlour','Computer Lab','Games Room','Front Field','AV Room','Reading Room','Main Auditorium','Xavier Hall','Reading Room','AV Room','Main Auditorium'];
List Day2Timing =['Full Day','Full Day','8:30','8:30','8:30','8:30','9:00','9:00','9:00','9:00','10:00','12:00','12:30','2:00','2:00'];

List Day3Event =['X-Spike','X-Calibre','X-Bid','X-Act','X-Code','X-Hunt','X-Travagance','X-Uent'];
List Day3Venue =['Back Field','Xavier Hall','Reading Room','AV Room','Computer Lab','School Campus','Main Auditorium','Main Auditorium'];
List Day3Timing =['8:30','8:30','9:00','9:00','9 AM - 11 AM','10:00','2:30','6:00'];
List Sporting1 =["X-GOAL","X-HOOP","X-PONG","X-SPIKE","X-PULL","X-MATE","X-WICKET","X-FIFA",];
List Offstage1 = ["X-QUIZITE" , "X-GAANA","X-SPLASH","X-TRIAL", "X-30","X-CALIBRE","X-BID" , "X-HUNT","X-CODE","X-PIXEL","X-MONTAGE","X-BET",];
List Onstage1 = [ "X-60","X-ABHINOY","X-ACT","X-DROP", "X-RHYME","X-RAGA", "X-HOP","X-TRAVAGANCE","X-ACOUSTIC","X-PUN","X-VOGUE", "X-VENT"];

List<Eventss> Sporting = [
  Eventss(name: "X-GOAL", about: "FOOTBALL", category: "SPORTING", location: "BACK  FIELD", day: "2", time: "8:30", participants: "7 + 3",
      phrase: "SIIUUU!",
      rules: """
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

  Eventss(name: "X-HOOP", about: "BASKETBALL", category: "SPORTING", location: "BASKETBALL COURT", day: "1", time: "12:30", participants: "5 + 5", phrase: "Dunk like Lebron, Shoot like Larry.",
    rules: """
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

  Eventss(name: "X-PONG", about:"TABLE TENNIS", category: "SPORTING", location: "Games Room", day: "1", time: "1:00", participants: "4", phrase: "A table where you actually play.",
      rules: """
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

  Eventss(name: "X-SPIKE", about:"VOLLEYBALL", category: "SPORTING", location: "Back Field", day: "3", time: "8:30", participants: "6 + 3", phrase: "Can’t let the ball bounce.",
      rules: """
1. No. of participants : 6+3(substitutes) 

2. Separate event for boys and girls.

3. Each game will have 3 sets of 11 points each.

4. Finals will have 3 sets of 15 points each.

5. Players cannot substitute between a set .

6. Participants will have to carry their school jerseys with the school logo on it.
 
""",
      link: "images/X-SPIKE"),

  Eventss(name: "X-PULL", about:"TUG OF WAR", category: "SPORTING", location: "Front Field", day: "1", time: "12:30", participants: "10 + 2",
      phrase: """
Aa dekhe zarakismein
     kitna hai dum""",
      rules: """
1. No. of participants : 10+2(substitutes)

2. No spikes allowed .

3. Separate event for boys and girls.

4. Participants will have to carry their school jerseys with the school logo on it.

5. Other rules will be mentioned on spot.
""",
      link: "images/X-PULL"),

  Eventss(name: "X-MATE", about:"CHESS", category: "SPORTING", location: "Big Parlour", day: "2", time: "8:30", participants: "2", phrase: "Another battle between the colours.",
      rules: """ 
1. No. of participants : 2 ( Teams may consist both boys and girls ) 

2. Duration : 15 mins each match for a maximum of 5 rounds 

3. Format : Rapid 

4. All the rules of FIDE will be followed . 

5. Arbitrary decisions will be final and binding . 

6. One team per school is allowed.
""",
      link: "images/X-MATE"),

  Eventss(name: "X-WICKET", about: "BOX CRICKET", category: "SPORTING", location: "Basketball Court", day: "2", time: "8:30", participants: "8 + 2",
      phrase: """
Mera bat, Mein Batting Karunga
        -This is an Emotion      
      """,
      rules: """
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

  Eventss(name: "X-O☐Δ", about: "FIFA", category: "SPORTING", location: "AV Room", day: "2", time: "9:00", participants: "1 + 1", phrase:"EA SPORTS IT'S IN THE GAME!",
      rules: """
1. No. of participants : 1+1

2. Rolling substitutions are allowed .

3. Duration : 6 mins a half Matches will be held on PS4 . 

4. Tournament will be held on a knockout basis.

5. If a match ends in a draw , penalties will decide the winner. 

6. Other rules to be mentioned on spot .

7. Umpire decision is final and binding.
""",
      link: "images/X-FIFA"),


];

List<Eventss> OffStage = [
  Eventss(name: "X-QUIZITE", about: "QUIZ", category: "OFF-STAGE", location: "Reading Room", day: "2", time: "12:30", participants: "4",
      phrase:"""
Where a smart answer wont get you
                  fired. (iykyk)""",
      rules: """
1. No. of participants: 4

2. No. of rounds : 2 

3. First round will be a written preliminary round. 

4. Second round will be the finals . 

5. Further rules will be explained by the Quizmaster before the event. 
""",
      link: "images/X-QUIZITE"),

  Eventss(name: "X-GAANA", about: "ANTAKSHARI", category: "OFF-STAGE", location: "Xavier Hall", day: "1", time: "1:00", participants: "2", phrase:"X se gaao! X se!",
      rules: """
1. No. of participants: 2

2. No. of rounds: 3 (One Written Preliminary Round and 2 Final Rounds)

3. Language: Only Hindi Songs will be used

4. The rest of the rules will be given by the judges.
""",
      link: "images/X-GAANA"),

  Eventss(name: "X-SPLASH", about: "SKETCHES AND SPRAY PAINTING", category: "OFF-STAGE", location: "Games Room", day: "2", time: "9:00", participants: "1 + 1", phrase:"The EARTH without ART is “EH”!!",
      rules: """
1. Participants: 1+1

2. Number of Rounds: 2 (One for Sketches and One for Spray Painting)

3. Flex will be provided. Participants need to bring their own stationeries.

4. Theme to be provided later.

5. Use of obscene imagery will lead to disqualification.
""",
      link: "images/X-SPLASH"),

  Eventss(name: "X-TRIAL", about: "MOOT COURT", category: "OFF-STAGE", location: "AV Room", day: "2", time: "2:00", participants: "2", phrase:"When losing the case, find a loophole.",
      rules: """
1. Participants: 2

2. Number of Rounds: 3; Duration of Arguments: 3 + 1 minutes

3. The First and Second Case will be provided a day prior to the event. The third case(Final Round) will be provided on the day of the event by the judges.

4. All laws and judicial references are to be made according to the Indian Constitution, other relevant laws and precedents of the Indian Judicial Bodies.

5. Mode of Communication: English and the Judges are to be addressed as “Your Lordships”.

6. Use of unparliamentary language can lead to disqualification.
""",
      link: "images/X-TRIAL"),

  Eventss(name: "X-30", about: "EXTEMPORE - HALF A MINUTE", category: "OFF-STAGE", location: "AV Room", day: "1", time: "1:30", participants: "1",
      phrase:"""
You can speak well, if your tongue can
   deliver the message of your heart.""",
      rules: """
1. No. of participants : 1

2. Mode of language will be English . 

3. Duration : 30 seconds 

4. Unparliamentary language will lead to immediate disqualification. 

5. Topics will be decided via lucky draw .

6. Judging criteria : Delivery , content , body language , creativity . 
""",
      link: "images/X-30"),

  Eventss(name: "X-CALIBRE", about: "DEBATE", category: "OFF-STAGE", location: "Xavier Hall", day: "3", time: "8:30", participants: "3", phrase:"Don't raise your voice, raise your stance.",
      rules: """
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

  Eventss(name: "X-BID", about: "IPL AUCTION", category: "OFF-STAGE", location: "Reading Room", day: "3", time: "9:00", participants: "2",
      phrase:"""
What is the similarity between Siddhant Malhotra and 

     Shikhar Dhawan? They have both been dropped.""",
      rules: """
1. Participants: 2

2. Players List will be provided a day prior to the event.

3. Laptops will be allowed.

4. Number of rounds: 2 (Bidding Round and Q&A Session)

5. Number of Players: 11+2
""",
      link: "images/X-BID"),

  Eventss(name: "X-HUNT", about: "TREASURE HUNT", category: "OFF-STAGE", location: "School Campus", day: "3", time: "10:00", participants: "2", phrase:"Find the X.",
      rules: """
1. No. of participants: 2

2. Each school can employ the use of the school reps assigned to them to explore the school campus for clues.
""",
      link: "images/X-HUNT"),
  Eventss(name: "X-CODE", about: "HACKATHON", category: "OFF-STAGE", location: "Computer Lab", day: "1-3", time: "", participants: "2",
      phrase:"""
“If the outside is so good, why has man 
  spent thousands of years trying to 
              perfect the inside?”""",
      rules: """
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

  Eventss(name: "X-PIXEL", about: "PHOTOGRAPHY", category: "OFF-STAGE", location: "School Campus", day: "1 & 2", time: "Full Day", participants: "2",
      phrase:"""
               Photography is an art where Earth is the canvas. 
   It is limitless and the skill of a photographer brings forth its beauty.""",
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
      link: "images/X-PIXEL"),

  Eventss(name: "MONTAGE", about: "VLOGGING", category: "OFF-STAGE", location: "School Campus", day: "1-2", time: "All day", participants: "2",
      phrase:"""
   Welcome to my youtube channel!
Check out the link in the description.
        """,
      rules: """
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

  Eventss(name: "X-BET", about: "REPRESENTATIVE EVENTS", category: "OFF-STAGE", location: "Online", day: "Pre-Fest", time: "", participants: "2", phrase:"Don't play the odds, play the man.",
      rules: """
1. Participants: School Representatives

2. Each participant will be provided with 1000 X-BET Coins which they can place on any event of their liking.

3. Winner will be decided by the return they get on their investments
""",
      link: "images/X-BET"),
];


List<Eventss> OnStage = [
  Eventss(name: "X-60", about: "ONE MINUTE TO FAME", category: "ON-STAGE", location: "Big Parlour", day: "2", time: "8:30", participants: "1", phrase:"Race against the clock. A minute is all you have got.",
      rules: """
1. No. of participants : 1 

2. Any sort of uncultured behaviour will lead to immediate disqualification . 

3. Judging criteria : Creativity , content , innovation . 
""",
      link: "images/X-60"),

  Eventss(name: "X-ABHINOY", about: "BENGALI PLAY", category: "ON-STAGE", location: "Main Auditorium", day: "1", time: "12:30", participants: "4 + 2", phrase:"Directing and acting can enrich our history and culture.",
      rules: """
1. No. of participants : 4+2 

2. Duration : 5+2 minutes

3. Topics will be given later . 

4. Mode of language will be Bengali only .

5. Judging criteria : Originality , script , content , expressions , audience reaction , delivery 

6. Use of obscene language and gestures will lead to immediate disqualification.
""",
      link: "images/X-ABHINOY"),
  Eventss(name: "X-ACT", about: "AD-SPOOF", category: "ON-STAGE", location: "AV Room", day: "3", time: "9:00", participants: "5 + 2", phrase:"Kya aapke toothpaste mein namak hai?!",
      rules: """
1. No. of participants: 5 + 2

2. Duration : 4+2 minutes

3. Topics will be allotted via lucky draw.

4. Use of vernacular is allowed , however discouraged.

5. Judging criteria : Originality , script , content , expressions , audience reaction , delivery

6. Use of obscene language and gestures will lead to immediate disqualification.

7. Schools have to bring their own props. 
""",
      link: "images/X-ACT"),
  Eventss(name: "X-DROP", about: "RAP BATTTLE & BEATBOXING", category: "ON-STAGE", location: "Soumitra Sadan", day: "1", time: "1:30", participants: "1 + 1", phrase:"Apna time aayega!",
      rules: """ 
1. No. of participants: 1 + 1 (1 Rapper and 1 Beatboxer)

2. Use of both participants is not necessary. Either a rapper or a beatboxer can also perform.

3. Duration: 1.5 + 1 minute
""",
      link: "images/X-DROP"),
  Eventss(name: "X-RHYME", about: "SLAM POETRY", category: "ON-STAGE", location: "Reading Room", day: "2", time: "9:00", participants: "1",
      phrase:"""
People don’t remember the characters, 
      they only remember the poets.""",
      rules: """
1. Participants: 1

2. Duration: 1 + 1 minutes

3. Theme will be provided one hour prior to the event.

4. Language: English

5. Judging criteria: Originality, delivery, content.

6. Use of offensive languages will lead to disqualification.
""",
      link: "images/X-RHYME"),
  Eventss(name: "X-RAGA", about: "EASTERN MUSIC", category: "ON-STAGE", location: "Xavier Hall", day: "2", time: "12:00", participants: "6 + 4",
      phrase:"Where words fail, music speaks",
      rules: """
1. Participants: 6 + 4

2. Participants have to bring their own instruments.

3. Duration of Performance: 6 + 3

4. Semi-classical Bollywood songs are allowed. (Subject to judges discretion)
""",
      link: "images/X-RAGA"),
  Eventss(name: "X-HOP", about: "DANCE FACE OFF", category: "ON-STAGE", location: "Gymnasium Podium", day: "1", time: "12:30", participants: "1 + 1",
      phrase:"When in doubt, dance it out!",
      rules: """
1. Participants: 1 + 1

2. The event will be following the knockout format.

3. Duration: 1 minute + 30 seconds

4. Commandos will be allowed in the finals. (Optional and no extra points will be provided for this)

5. Inappropriate Clothing can lead to disqualification. Participants, if needed, have to bring their own props.
""",
      link: "images/X-HOP"),
  Eventss(name: "X-TRAVAGANCE", about: "WESTERN DANCE", category: "ON-STAGE", location: "Main Auditorium", day: "3", time: "2:30", participants: "6 + 4",
      phrase:"Jackson not Jordan!",
      rules: """
1. Participants: 6 + 4. 6 participants to be present on stage at all times.

2. Duration: 5+3.

3. No inappropriate lyrics to be included in the song used for the performance.

4. Participants have to bring their own props, if needed.

5. All the tracks to be played will have to be sent to the fest’s official email address a week before the fest. 

6. Objectionable costumes will lead to immediate disqualification.
""",
      link: "images/X-TRAVAGANCE"),
  Eventss(name: "X-ACOUSTIC", about: "WESTERN MUSIC", category: "ON-STAGE", location: "Main Auditorium", day: "2", time: "2:00", participants: "5 + 3", phrase:"""
One Good Thing About Music is when it hits
               you, you feel no pain.
  """,
      rules: """
1. Participants: 5+3. 5 participants to be present on stage at all times.

2. Duration: 6+4.

3. Participants will have to bring their own instruments. Acoustic drums and sound system will be provided.

4. No pre-recorded music shall be allowed.

5. Vulgar lyrics will lead to immediate disqualification.
""",
      link: "images/X-ACOUSTIC"),
  Eventss(name: "X-PUN", about: "STAND UP", category: "ON-STAGE", location: "Main Auditorium", day: "2", time: "10:00", participants: "1", phrase:"Scuse me! Brudda? Brudda idhar",
      rules: """ 
Stand-up comedy consists of one-liners, stories, observations or a shtick that may incorporate props, music, magic tricks or ventriloquism.
1. Participants: 1

2. Duration : 3+1

3. All genres of comedy are allowed.

4. Language: English

5. No puns to be made on sensitive topics, no vulgar gestures allowed, if performed will lead to immediate disqualification.
""",
      link: "images/X-PUN"),
  Eventss(name: "X-VOGUE", about: "FASHION SHOW", category: "ON-STAGE", location: "Main Auditorium", day: "1", time: "4:30", participants: "8 + 2", phrase:"Make the stage your world, Make the world your Runway.",
      rules: """
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