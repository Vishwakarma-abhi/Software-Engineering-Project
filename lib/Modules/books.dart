import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:bit_d/functions/book_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cse_book extends StatefulWidget {
  const cse_book({Key? key}) : super(key: key);

  @override
  State<cse_book> createState() => _cse_bookState();
}

class _cse_bookState extends State<cse_book> {
  final subjectcode = TextEditingController();
  final semester = TextEditingController();
  final isbn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchappbar,
      drawer: customdrawer,
      body: Column(
        children: [
          Container(
            width: 150,
            height: 200,
          ),
        ],
      ),
    );
    // body: Column(children: [
    //   Padding(
    //     padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    //     child: SizedBox(
    //       height: 60,
    //       child: Text(
    //         'ACCESS BOOKS',
    //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //       ),
    //     ),
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
    //     child: TextField(
    //       controller: subjectcode,
    //       keyboardType: TextInputType.text,
    //       decoration: InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'Subject Code',
    //           hintText: 'Enter Your Subject Code'),
    //     ),
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
    //     child: TextField(
    //       controller: semester,
    //       keyboardType: TextInputType.text,
    //       decoration: InputDecoration(
    //           border: OutlineInputBorder(),
    //           labelText: 'semester',
    //           hintText: 'Enter DeadLine '),
    //     ),
    //   ),
    //   Center(
    //       child: Text(
    //     'OR',
    //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //   )),
    //   Padding(
    //     padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
    //     child: TextField(
    //       textAlign: TextAlign.center,
    //       controller: isbn,
    //       keyboardType: TextInputType.text,
    //       decoration: InputDecoration(
    //         border: OutlineInputBorder(),
    //         hintText: 'Enter year',
    //         labelText: 'Year',
    //       ),
    //     ),
    //   ),
    //   GestureDetector(
    //     onTap: () {
    //       // Map<String, String> assignmentss = {
    //       //   'Subject Code': SubjectCode.text,
    //       //   'Deadline': Deadline.text,
    //       //   'Assignment Detail': AssignmentDetail.text,
    //       // };

    //       // dbRef.push().set(assignmentss);
    //       // Navigator.push(
    //       //     context,
    //       //     MaterialPageRoute(
    //       //         builder: ((context) => assignments())));
    //     },
    //     child: Padding(
    //       padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    //       child: Container(
    //         child: Center(
    //             child: Text(
    //           'Add',
    //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //         )),
    //         height: 50,
    //         width: 100,
    //         decoration: BoxDecoration(
    //             color: Color(0xFFFFBD59),
    //             borderRadius: BorderRadius.circular(30),
    //             border: Border.all(color: Colors.black)),
    //       ),
    //     ),
    //   ),
    // ]));
  }
}
