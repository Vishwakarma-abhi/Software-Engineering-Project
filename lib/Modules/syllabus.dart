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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/mathlogo.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 42.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(81),
                      color: Colors.blue,
                    ),
                    width: 200,
                    height: 150,
                    child: Center(
                      child: Text(
                        'Mathematics',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Secular',
                            fontWeight: FontWeight.bold),
                      ),
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/chemistry.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 42.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(81),
                      color: Colors.blue,
                    ),
                    width: 200,
                    height: 150,
                    child: Center(
                      child: Text(
                        'Chemistry',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Secular',
                            fontWeight: FontWeight.bold),
                      ),
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/Elect.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 42.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(81),
                      color: Colors.blue,
                    ),
                    width: 200,
                    height: 150,
                    child: Center(
                      child: Text(
                        'BEC',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Secular',
                            fontWeight: FontWeight.bold),
                      ),
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/EEE.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 42.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(81),
                      color: Colors.blue,
                    ),
                    width: 200,
                    height: 150,
                    child: Center(
                      child: Text(
                        'DSD',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Secular',
                            fontWeight: FontWeight.bold),
                      ),
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/mathlogo.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 42.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(81),
                      color: Colors.blue,
                    ),
                    width: 200,
                    height: 150,
                    child: Center(
                      child: Text(
                        'Mathematics',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Secular',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                    child: Image.asset('Assets/chemistry.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Chemistry',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Secular',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                    child: Image.asset('Assets/Elect.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'BEC',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Secular',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    width: 100,
                    height: 150,
                    child: Image.asset('Assets/EEE.png'),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Electronics',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Secular',
                          fontWeight: FontWeight.bold),
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
