import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:bit_d/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

class assignments extends StatefulWidget {
  const assignments({Key? key}) : super(key: key);

  @override
  State<assignments> createState() => _assignmentsState();
}

class _assignmentsState extends State<assignments> {
  Query dbQuery = FirebaseDatabase.instance.ref().child('Assignments');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Assignments');

  Widget listItem({required Map assignment}) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            "Subject Code :  " + assignment['Subject Code'],
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Deadline :  " + assignment['Deadline'],
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            'Detail : ' + assignment['Assignment Detail'],
            style: TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  //Delete Operation
                  reference.child(assignment['key']).remove();
                },
                child: Icon(
                  Icons.delete,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      drawer: customdrawer,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                'ASSIGNMENTS',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              child: FirebaseAnimatedList(
                  query: dbQuery,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map assignments = snapshot.value as Map;
                    assignments['key'] = snapshot.key;

                    return listItem(assignment: assignments);
                  }),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => homeScreen())));
              },
              child: Text('Back'))
        ],
      ),
    );
  }
}
