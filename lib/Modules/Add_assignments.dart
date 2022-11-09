import 'package:bit_d/Modules/Assignments.dart';
import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home_screen.dart';

class addAssignments extends StatefulWidget {
  const addAssignments({Key? key}) : super(key: key);

  @override
  State<addAssignments> createState() => _addAssignmentsState();
}

class _addAssignmentsState extends State<addAssignments> {
  bool newscreen = false;

  final SubjectCode = TextEditingController();
  final Deadline = TextEditingController();
  final AssignmentDetail = TextEditingController();

  //Database reference varaible and functions
  late DatabaseReference dbRef;

  Query dbQuery = FirebaseDatabase.instance.ref().child('Assignments');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Assignments');

  @override
  void initState() {
    super.initState();
    //creating assignments Table in Firebase Realtime Database
    dbRef = FirebaseDatabase.instance.ref().child('Assignments');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      drawer: customdrawer,
      body: Column(
        children: [
          newscreen
              ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: TextField(
                        controller: SubjectCode,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Subject Code',
                            hintText: 'Enter Your Subject Code'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: TextField(
                        controller: Deadline,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'DeadLine',
                            hintText: 'Enter DeadLine '),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        controller: AssignmentDetail,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 50),
                          border: OutlineInputBorder(),
                          hintText: 'Assignment Detail',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Map<String, String> assignmentss = {
                          'Subject Code': SubjectCode.text,
                          'Deadline': Deadline.text,
                          'Assignment Detail': AssignmentDetail.text,
                        };

                        dbRef.push().set(assignmentss);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => assignments())));
                      },
                      child: Container(
                        child: Center(
                            child: Text(
                          'Add',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFBD59),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(80, 150, 0, 0),
                                child: FloatingActionButton(
                                    child: Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        newscreen = true;
                                      });
                                    }),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 150, 0, 0),
                                child: Text(
                                  'Add Assignments',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 50, 0, 0),
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => assignments()));
                            },
                            child: Icon(Icons.view_agenda),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                          child: Text(
                            'View Assignments',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
