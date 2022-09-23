import 'package:flutter/material.dart';
import 'event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'participant.dart';

late Event event;
late String uid;

class ParticipantsForm extends StatefulWidget {
  ParticipantsForm(Event e, String u) {
    event = e;
    uid = u;
  }

  @override
  State<ParticipantsForm> createState() => _ParticipantsFormState();
}

class _ParticipantsFormState extends State<ParticipantsForm> {
  String name = '';
  String phone = '';
  final CollectionReference schools =
      FirebaseFirestore.instance.collection('schools');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(event.name),
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            Text("Required Participants: " + event.participants.toString()),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            Text("Category: " + event.category),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            ElevatedButton(
                onPressed: () {}, child: Text('Registered Participants')),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            Container(
              height: 0.6 * MediaQuery.of(context).size.height,
              child: Scrollbar(
                child: ListView(
                  children: [
                    for (int i = 1; i <= event.participants; i++) _form(i),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  createParticipant(int i) async {
    final participant = FirebaseFirestore.instance
        .collection('schools')
        .doc(uid)
        .collection(event.name)
        .doc('participant $i');

    final json = {'name': name, 'phone': phone};

    await participant.set(json);
  }

  Widget _form(int i) {
    return Column(
      children: [
        Text("Participant " + i.toString()),
        SizedBox(
          height: 0.05 * MediaQuery.of(context).size.height,
        ),
        TextFormField(
          onChanged: (value) {
            setState(() {
              name = value;
            });
          },
          decoration: InputDecoration(),
        ),
        SizedBox(
          height: 0.05 * MediaQuery.of(context).size.height,
        ),
        TextFormField(
          onChanged: (value) {
            setState(() {
              phone = value;
            });
          },
          decoration: InputDecoration(),
        ),
        SizedBox(
          height: 0.05 * MediaQuery.of(context).size.height,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                createParticipant(i);
              });
            },
            child: Text("Submit Participant")),
        SizedBox(
          height: 0.1 * MediaQuery.of(context).size.height,
        ),
      ],
    );
  }
}

class RegisteredParticipants extends StatefulWidget {
  const RegisteredParticipants({super.key});

  @override
  State<RegisteredParticipants> createState() => _RegisteredParticipantsState();
}

class _RegisteredParticipantsState extends State<RegisteredParticipants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Registered Participants'),
        centerTitle: true,
      ),
      body: StreamBuilder<List<Participant>>(
          stream: readParticipants(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Something went wrong! Try Again");
            } else if (snapshot.hasData) {
              final participants = snapshot.data!;

              return ListView(
                children: participants.map(buildParticipant).toList(),
              );
            } else if (snapshot.data == null) {
              return Center(
                child: Text(
                    "No Participants have been registered for this event yet!"),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Stream<List<Participant>> readParticipants() => FirebaseFirestore.instance
      .collection('schools')
      .doc(uid)
      .collection(event.name)
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Participant.fromJson(doc.data()))
          .toList());

  Widget buildParticipant(Participant participant) => ListTile(
        title: Text(participant.name),
        subtitle: Text(participant.phone),
      );
}
