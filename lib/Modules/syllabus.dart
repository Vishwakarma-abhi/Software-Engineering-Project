import 'package:flutter/material.dart';

class syllabus extends StatefulWidget {
  const syllabus({Key? key}) : super(key: key);

  @override
  State<syllabus> createState() => _syllabusState();
}

class _syllabusState extends State<syllabus> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 94, 140, 240),
          title: Text(
            'CSE',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                'S1',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S2',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S3',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S4',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S5',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S6',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S7',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'S8',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: sem1()),
          Center(child: sem1()),
          Center(child: sem1()),
          Center(child: sem1()),
          Center(child: sem1()),
          Center(child: sem1()),
          Center(child: sem1()),
          Center(child: sem1()),
        ]),
        // body: Column(
        //   children: [
        //     Center(
        //       child: Container(
        //           width: 200,
        //           height: 50,
        //           decoration: BoxDecoration(
        //             color: Colors.amber,
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //           margin: EdgeInsets.all(50),
        //           child: Center(
        //               child: Text(
        //             'CSE',
        //             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        //           ))),
        //     ),
        //     Container(
        //       decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
        //       height: 60,
        //       child: ListView(
        //         scrollDirection: Axis.horizontal,
        //         children: [
        //           GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(builder: (context) => const sem1()),
        //               );
        //               setState(() {
        //                 selection = 1;
        //               });
        //             },
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 1',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 2',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 3',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 4',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 5',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 6',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 7',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //           GestureDetector(
        //             child: Container(
        //               child: Center(
        //                   child: Text(
        //                 'SEM 8',
        //                 style:
        //                     TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //               )),
        //               margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //               width: 65,
        //               decoration: BoxDecoration(
        //                   color: Color.fromARGB(255, 181, 221, 254),
        //                   borderRadius: BorderRadius.circular(10),
        //                   border: Border.all(color: Colors.black)),
        //             ),
        //           ),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}

//Sem 1
class sem1 extends StatefulWidget {
  const sem1({Key? key}) : super(key: key);

  @override
  State<sem1> createState() => _sem1State();
}

class _sem1State extends State<sem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/1.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Mathematics',
                      style: TextStyle(fontSize: 25, fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/1.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Mathematics',
                      style: TextStyle(fontSize: 25, fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/1.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Mathematics',
                      style: TextStyle(fontSize: 25, fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/1.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Mathematics',
                      style: TextStyle(fontSize: 25, fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/1.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Mathematics',
                      style: TextStyle(fontSize: 25, fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/1.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Mathematics',
                      style: TextStyle(fontSize: 25, fontFamily: 'Secular'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
