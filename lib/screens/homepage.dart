import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget{
CollectionReference player = FirebaseFirestore.instance.collection('Player');
String textNote = ' ';
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
           TextField(
             onChanged: (value){
               textNote = value;
             },
            decoration: const InputDecoration(
              hintText: 'Enter Player Name'
            ),
          ),
          ElevatedButton(onPressed: () async{
            await player.add({
              'firstName': 'Dhawan',
              'age': 38
            }).then((value) => print('player added'));
          },
              child: Text('Enter'))
        ],
      )
    );
  }
}