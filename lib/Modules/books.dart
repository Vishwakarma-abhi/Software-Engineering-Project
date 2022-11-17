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
      appBar: custombar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 140, 240),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(7),
                  child: Center(
                      child: Text(
                    'ACCESS BOOKS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bookoptions()));
                          },
                          child: Container(
                            width: 150,
                            height: 200,
                            child: Image.asset('Assets/crackin.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Container(
                            width: 150,
                            height: 200,
                            child: Image.asset(
                              'Assets/algor.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Container(
                            width: 150,
                            height: 200,
                            child: Image.asset(
                              'Assets/toc.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: Image.asset('Assets/sysd.jpg'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 200,
                          child: Image.asset('Assets/pyth.jpg'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 200,
                          child: Image.asset('Assets/se.jpg'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bookoptions extends StatefulWidget {
  const Bookoptions({Key? key}) : super(key: key);

  @override
  State<Bookoptions> createState() => _BookoptionsState();
}

class _BookoptionsState extends State<Bookoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/pdf.png',
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          'PDF',
                          style: TextStyle(
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              width: 15,
            ),
            Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/shop.png',
                        height: 100,
                      ),
                      Text('Order',
                          style: TextStyle(
                            fontSize: 50,
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
