import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class teamDetails extends StatelessWidget {
  final String teamID;
  const teamDetails({super.key, required this.teamID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Team $teamID Details"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Player').where('Team_ID', isEqualTo: teamID).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                child: Center(child: Text(document['FullName'])),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}