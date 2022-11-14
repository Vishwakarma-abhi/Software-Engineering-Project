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
          child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 4.5)),
                    child: Image.asset(
                      'Assets/Picture.png',
                      height: 150,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                    width: 350,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            'ABHIJEET ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            'SEMESTER 5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            'BTECH/60015/20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            'CONTACT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await FirebaseAuth.instance.signOut();
                          },
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                                child: Text(
                              'LOGOUT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ),
                        ),

                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                        //   child: GestureDetector(
                        //     onTap: () async {
                        //       await FirebaseAuth.instance.signOut();
                        //     },
                        //     child: Container(
                        //       width: 150,
                        //       height: 50,
                        //       decoration: BoxDecoration(
                        //           border:
                        //               Border.all(color: Colors.black, width: 2),
                        //           color: Colors.green,
                        //           borderRadius: BorderRadius.circular(35)),
                        //       child: Center(
                        //           child: Text(
                        //         'LOGOUT',
                        //         style: TextStyle(
                        //             fontWeight: FontWeight.bold, fontSize: 20),
                        //       )),
                        //     ),
                        //   ),
                        // ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
