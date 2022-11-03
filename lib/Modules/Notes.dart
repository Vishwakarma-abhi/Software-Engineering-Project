import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
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
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: Text(
                'ACCESS NOTES',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                          )
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const pdf()),
                                // );
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                                height: 90,
                                width: 80,
                                child: Image.asset('Assets/1.png'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'DCCN',
                                  style: TextStyle(
                                    fontFamily: 'Secular',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const pdf()),
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                          )
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                              height: 90,
                              width: 80,
                              child: Image.asset('Assets/2.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'DBMS',
                                  style: TextStyle(
                                    fontFamily: 'Secular',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                          )
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const pdf()),
                                // );
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                                height: 90,
                                width: 80,
                                child: Image.asset('Assets/1.png'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'DCCN',
                                  style: TextStyle(
                                    fontFamily: 'Secular',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const pdf()),
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                          )
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                              height: 90,
                              width: 80,
                              child: Image.asset('Assets/2.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'DBMS',
                                  style: TextStyle(
                                    fontFamily: 'Secular',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                          )
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const pdf()),
                                // );
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                                height: 90,
                                width: 80,
                                child: Image.asset('Assets/1.png'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'DCCN',
                                  style: TextStyle(
                                    fontFamily: 'Secular',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const pdf()),
                      // );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                          )
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                              height: 90,
                              width: 80,
                              child: Image.asset('Assets/2.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  'DBMS',
                                  style: TextStyle(
                                    fontFamily: 'Secular',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ]));
  }
}
