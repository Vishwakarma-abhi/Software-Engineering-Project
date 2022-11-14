import 'package:bit_d/Modules/resultreport.dart';
import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:bit_d/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class resultdata extends StatefulWidget {
  const resultdata({Key? key}) : super(key: key);

  @override
  State<resultdata> createState() => _resultdataState();
}

class _resultdataState extends State<resultdata> {
  final subjectcode = TextEditingController();
  final semester = TextEditingController();
  final fullname = TextEditingController();
  final score = TextEditingController();
  final year = TextEditingController();
  final studentid = TextEditingController();

  late DatabaseReference dbRef;

  Query dbQuery = FirebaseDatabase.instance.ref().child('Results');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Results');

  @override
  void initState() {
    super.initState();
    //creating assignments Table in Firebase Realtime Database
    dbRef = FirebaseDatabase.instance.ref().child('Results');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: custombar,
        drawer: customdrawer,
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 140, 240),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: Text(
                    'RESULT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: TextField(
                controller: studentid,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Student ID',
                    hintText: 'Enter Your Student ID'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: TextField(
                controller: subjectcode,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Subject Code',
                    hintText: 'Enter Your Subject Code'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: TextField(
                controller: semester,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'semester',
                    hintText: 'Enter Your Semester'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: TextField(
                textAlign: TextAlign.center,
                controller: year,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter year',
                  labelText: 'Year',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: TextField(
                textAlign: TextAlign.center,
                controller: score,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter score',
                  labelText: 'score',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Map<String, String> resultreport = {
                  'Student ID': studentid.text,
                  'Subject Code': subjectcode.text,
                  'semester': semester.text,
                  'year': year.text,
                  'score': score.text
                };

                dbRef.push().set(resultreport);
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => homeScreen())));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  child: Center(
                      child: Text(
                    'Upload',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 94, 140, 240),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => report())));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  child: Center(
                      child: Center(
                    child: Text(
                      'View Result ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 94, 140, 240),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black)),
                ),
              ),
            ),
          ]),
        ));
  }
}
