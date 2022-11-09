import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: custombar,
        drawer: customdrawer,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: SizedBox(
              height: 60,
              child: Text(
                'ACCESS BOOKS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
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
                  hintText: 'Enter DeadLine '),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: TextField(
              textAlign: TextAlign.center,
              controller: fullname,
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
              // Map<String, String> assignmentss = {
              //   'Subject Code': SubjectCode.text,
              //   'Deadline': Deadline.text,
              //   'Assignment Detail': AssignmentDetail.text,
              // };

              // dbRef.push().set(assignmentss);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: ((context) => assignments())));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                child: Center(
                    child: Text(
                  'Upload',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFFFBD59),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black)),
              ),
            ),
          ),
        ]));
  }
}
