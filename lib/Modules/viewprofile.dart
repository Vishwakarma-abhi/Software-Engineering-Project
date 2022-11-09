import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home_screen.dart';

class myprofile extends StatefulWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
  late DatabaseReference dbRef;
  Query dbQuery = FirebaseDatabase.instance.ref().child('Student');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Student');

  get math => null;

  @override
  void initState() {
    super.initState();
    //creating Student Table in Firebase Realtime Database
    dbRef = FirebaseDatabase.instance.ref().child('Student');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      drawer: customdrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Center(
                child: Image.asset(
                  'Assets/profile.png',
                  height: 150,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    'ABHIJEET VISHWAKARMA',
                    style: TextStyle(fontSize: 18),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    'ABHIJEET VISHWAKARMA',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                  width: 250,
                  height: 70,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    'ABHIJEET VISHWAKARMA',
                    style: TextStyle(fontSize: 18),
                  ))),
            ),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                child: Text('LOGOUT'))
          ],
        ),
      ),
    );
  }
}
