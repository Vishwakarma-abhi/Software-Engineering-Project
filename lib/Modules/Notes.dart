import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:bit_d/custom_widgets/home_boxdecor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: custombar,
        drawer: customdrawer,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: Container(
                height: 40,
                width: 190,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 140, 240),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'ACCESS NOTES',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const pdf()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: notebox,
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const pdf()),
                                );
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                                height: 90,
                                width: 80,
                                child: Image.asset('Assets/unnamed.png'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: subboxdecor,
                                  child: Center(
                                    child: Text(
                                      'DBMS',
                                      style: TextStyle(
                                          fontFamily: 'Secular',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const pdf()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: notebox,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                              height: 90,
                              width: 80,
                              child: Image.asset('Assets/CSE.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: subboxdecor,
                                  child: Center(
                                    child: Text(
                                      'DAA',
                                      style: TextStyle(
                                          fontFamily: 'Secular',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
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
                      decoration: notebox,
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const pdf()),
                                );
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
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: subboxdecor,
                                  child: Center(
                                    child: Text(
                                      'DCCN',
                                      style: TextStyle(
                                          fontFamily: 'Secular',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const pdf()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 10.0),
                      height: 160,
                      width: 150,
                      decoration: notebox,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                              height: 90,
                              width: 80,
                              child: Image.asset('Assets/EEE.png'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: subboxdecor,
                                  child: Center(
                                    child: Text(
                                      'DSD',
                                      style: TextStyle(
                                          fontFamily: 'Secular',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
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
                      decoration: notebox,
                      child: Center(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const pdf()),
                                );
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                                height: 90,
                                width: 80,
                                child: Image.asset('Assets/Elect.png'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Center(
                                child: Container(
                                  width: 100,
                                  height: 30,
                                  decoration: subboxdecor,
                                  child: Center(
                                    child: Text(
                                      'BEE',
                                      style: TextStyle(
                                          fontFamily: 'Secular',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const pdf()),
                      );
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
                              decoration: subboxdecor,
                              width: 100,
                              height: 30,
                              child: Center(
                                child: Text(
                                  'DSA',
                                  style: TextStyle(
                                      fontFamily: 'Secular',
                                      fontSize: 18,
                                      color: Colors.white),
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

//classed for opening pdfs
class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: custombar,
          body: Container(child: SfPdfViewer.asset('Assets/Maths.pdf'))),
    );
  }
}

class subnote extends StatefulWidget {
  const subnote({Key? key}) : super(key: key);

  @override
  State<subnote> createState() => _subnoteState();
}

class _subnoteState extends State<subnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 18,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    child: Column(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const pdf()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      height: 90,
                      width: 80,
                      child: Image.asset('Assets/1.png'),
                    ),
                  )
                ]))))
      ])
    ])));
  }
}
