import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class questionpapers extends StatefulWidget {
  const questionpapers({Key? key}) : super(key: key);

  @override
  State<questionpapers> createState() => _questionpapersState();
}

class _questionpapersState extends State<questionpapers> {
  final subjectcode = TextEditingController();
  final semester = TextEditingController();
  final year = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          title: Text(
            'STUDENT PORTAL',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(1),
                color: Color(0xFFFAEDED)),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                  },
                  icon: Icon(
                    Icons.leave_bags_at_home,
                    color: Colors.black,
                  )),
            )
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: SizedBox(
              height: 60,
              child: Text(
                'PREVIOUS YEAR PAPERS',
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
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
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
              controller: year,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter year',
                labelText: 'Year',
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
                  'Add',
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
