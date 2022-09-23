import 'package:flutter/material.dart';
import 'event.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'participants_form.dart';

late String uid;

class RegistrationList extends StatefulWidget {
  RegistrationList(String u) {
    uid = u;
  }

  @override
  State<RegistrationList> createState() => _RegistrationListState();
}

class _RegistrationListState extends State<RegistrationList> {
  List Events = [
    Event(
        name: "X-GOAL",
        participants: 10,
        about: "Football",
        category: "Sporting"),
    Event(
        name: "X-HOOP",
        participants: 10,
        about: "Basketball",
        category: "Sporting"),
    Event(
        name: "X-PONG",
        participants: 4,
        about: "Table Tennis",
        category: "Sporting"),
    Event(
        name: "X-SPIKE",
        participants: 9,
        about: "Volleyball",
        category: "Sporting"),
    Event(
        name: "X-PULL",
        participants: 12,
        about: "Tug Of War",
        category: "Sporting"),
    Event(
        name: "X-MATE", participants: 2, about: "Chess", category: "Sporting"),
    Event(
        name: "X-WICKET",
        participants: 13,
        about: "Cricket",
        category: "Sporting"),
    Event(name: "X-O☐Δ", participants: 2, about: "FIFA", category: "Sporting"),
    Event(
        name: "X-QUIZITE",
        participants: 4,
        about: "Quiz",
        category: "Off-Stage"),
    Event(
        name: "X-GAANA",
        participants: 2,
        about: "Antakshari",
        category: "Off-Stage"),
    Event(
        name: "X-SPLASH",
        participants: 2,
        about: "Sketches and Spray Painting",
        category: "Off-Stage"),
    Event(
        name: "X-TRIAL",
        participants: 2,
        about: "Moot Court",
        category: "Off-Stage"),
    Event(
        name: "X-30",
        participants: 1,
        about: "Extempore-Half A Minute",
        category: "Off-Stage"),
    Event(
        name: "X-CALIBRE",
        participants: 3,
        about: "Debate",
        category: "Off-Stage"),
    Event(
        name: "X-BID",
        participants: 2,
        about: "Auction",
        category: "Off-Stage"),
    Event(
        name: "X-HUNT",
        participants: 2,
        about: "Treasure Hunt",
        category: "Off-Stage"),
    Event(
        name: "X-CODE",
        participants: 2,
        about: "Hackathon",
        category: "Off-Stage"),
    Event(
        name: "X-PIXEL",
        participants: 2,
        about: "Photography",
        category: "Off-Stage"),
    Event(
        name: "X-MONTAGE",
        participants: 2,
        about: "Vlogging",
        category: "Off-Stage"),
    Event(
        name: "X-BET",
        participants: 2,
        about: "Representatives Event",
        category: "Off-Stage"),
    Event(
        name: "X-60",
        participants: 1,
        about: "One Minute To Fame",
        category: "Off-Stage"),
    Event(
        name: "X-ABHINOY",
        participants: 10,
        about: "Bengali Play",
        category: "On-Stage"),
    Event(
        name: "X-ACT",
        participants: 7,
        about: "AD Spoof",
        category: "On-Stage"),
    Event(
        name: "X-DROP",
        participants: 2,
        about: "Rap Battle and Beatboxing",
        category: "On-Stage"),
    Event(
        name: "X-RHYME",
        participants: 1,
        about: "Slam Poetry",
        category: "On-Stage"),
    Event(
        name: "X-RAGA",
        participants: 10,
        about: "Eatern Music",
        category: "On-Stage"),
    Event(
        name: "X-HOP",
        participants: 2,
        about: "Dance Face Off",
        category: "On-Stage"),
    Event(
        name: "X-TRAVAGANCE",
        participants: 10,
        about: "Western Dance",
        category: "On-Stage"),
    Event(
        name: "X-ACOUSTIC",
        participants: 8,
        about: "Western Dance",
        category: "On-Stage"),
    Event(
        name: "X-PUN",
        participants: 1,
        about: "Stand Up Comedy",
        category: "On-Stage"),
    Event(
        name: "X-VOGUE",
        participants: 12,
        about: "Fashion Show",
        category: "On-Stage"),
  ];

  Future<void> navigateToParticipantsForm(context, uid, event) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ParticipantsForm(event, uid)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        title: Text("Registration"),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        child: Scrollbar(
          child: ListView(
            children: [
              for (Event e in Events)
                ListTile(
                  title: Text(e.name),
                  trailing: Text("Participants: " + e.participants.toString()),
                  subtitle: Text(e.about),
                  onTap: () {
                    navigateToParticipantsForm(context, uid, e);
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
