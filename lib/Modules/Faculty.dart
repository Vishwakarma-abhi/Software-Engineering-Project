import 'package:bit_d/Modules/facultyprofile.dart';
import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
import 'package:bit_d/custom_widgets/faculty_custom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class facultydettails extends StatefulWidget {
  const facultydettails({Key? key}) : super(key: key);

  @override
  State<facultydettails> createState() => _facultydettailsState();
}

class _facultydettailsState extends State<facultydettails> {
  var list = ['Kamta Nath Mishra', 'Rayees Ahmad', 'Sounak Paul', 'Nishikant '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      drawer: customdrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 22,
            // ),
            Center(
              child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 140, 240),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(30),
                  child: Center(
                      child: Text(
                    'FACULTY DETAILS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/knmSir.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                    width: 200,
                    height: 150,
                    child: Column(
                      children: [
                        Text(
                          'Kamta Nath Mishra',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => facprofile()));
                            },
                            child: Text('DETAILS'))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/paulsir.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                    width: 200,
                    height: 150,
                    child: Column(
                      children: [
                        Text(
                          '	Dr. Sounak Paul',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => facprofile()));
                            },
                            child: Text('DETAILS'))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Rayees Ahmad sir
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/rak.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                    width: 200,
                    height: 150,
                    child: Column(
                      children: [
                        Text(
                          '	Mr. Rayees Ahamed',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => facprofile()));
                            },
                            child: Text('DETAILS'))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
