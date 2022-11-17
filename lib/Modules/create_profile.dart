import 'package:bit_d/Modules/viewprofile.dart';
import 'package:bit_d/home_screen.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool isprofile = false;

  final fullname = TextEditingController();
  final studentID = TextEditingController();
  final semester = TextEditingController();
  final state = TextEditingController();
  final city = TextEditingController();

  //Database reference varaible and functions
  late DatabaseReference dbRef;

  get math => null;
  Query dbQuery = FirebaseDatabase.instance.ref().child('Student');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Student');
  @override
  void initState() {
    super.initState();
    //creating Student Table in Firebase Realtime Database
    dbRef = FirebaseDatabase.instance.ref().child('Student');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAEDED),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 100,
                  //User Image should be uploaded
                  child: Image.asset('Assets/1.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: Text(
                    'Create Profile',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextField(
                    controller: fullname,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Full Name',
                        hintText: 'Enter Your Name'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    controller: studentID,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'StudentID',
                        hintText: 'Enter your Student ID'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    controller: semester,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Semester',
                        hintText: 'Enter your Semester'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    controller: state,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'State',
                        hintText: 'Enter your State'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    controller: city,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'City',
                        hintText: 'Enter your City'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Map<String, String> students = {
                      'fullname': fullname.text,
                      'Student ID': studentID.text,
                      'Semester': semester.text,
                      'State': state.text,
                      'City': state.text,
                    };

                    dbRef.push().set(students);

                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => myprofile())));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      'Create',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFBD59),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)),
                  ),
                )
              ],
            ),
          ]),
        ));
    //       Row(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
    //             child: Row(
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.fromLTRB(80, 150, 0, 0),
    //                   child: FloatingActionButton(
    //                       child: Icon(Icons.add),
    //                       onPressed: () {
    //                         setState(() {
    //                           isprofile = true;
    //                         });
    //                       }),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.fromLTRB(20, 150, 0, 0),
    //                   child: Text(
    //                     'Create Profile',
    //                     style: TextStyle(fontSize: 20),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(80, 50, 0, 0),
    //             child: FloatingActionButton(
    //               onPressed: () {
    //                 Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                         builder: (context) => myprofile()));
    //               },
    //               child: Icon(Icons.view_agenda),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
    //             child: Text(
    //               'View Profile',
    //               style: TextStyle(fontSize: 20),
    //             ),
    //           ),
    //         ],
    //       )
    //     ],
    //   )
    // : SingleChildScrollView(
  }
}
