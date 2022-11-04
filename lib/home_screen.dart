import 'package:bit_d/Authentication%20Pages/login.dart';
import 'package:bit_d/Modules/Add_assignments.dart';
import 'package:bit_d/Modules/Assignments.dart';
import 'package:bit_d/Modules/Faculty.dart';
import 'package:bit_d/Modules/Notes.dart';
import 'package:bit_d/Modules/Result.dart';
import 'package:bit_d/Modules/attendence.dart';
import 'package:bit_d/Modules/create_profile.dart';
import 'package:bit_d/Modules/holiday.dart';
import 'package:bit_d/Modules/syllabus.dart';
import 'package:bit_d/Modules/viewprofile.dart';
import 'package:bit_d/books.dart';
import 'package:bit_d/functions/erp.dart';
import 'package:bit_d/pyqs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  //Creating a sGlobal key for accessing navigation bar
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final username = FirebaseAuth.instance.currentUser!.displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: Text(
          'STUDENT PORTAL',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(1),
              color: Color.fromARGB(255, 94, 140, 240)),
        ),
        leading: GestureDetector(
          onTap: () {
            _key.currentState!.openDrawer();
          },
          child: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
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
                  color: Colors.white,
                )),
          )
        ],
      ),

      //drawer or navigation bar
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(
                    255,
                    94,
                    140,
                    240,
                  )),
                  child: Column(
                    children: [
                      Image.asset(
                        'Assets/home.png',
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          ' WELCOME ' + username!.toUpperCase(),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ],
                  )),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('HOME'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.web),
                title: const Text('ERP'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.web),
                title: const Text('ABOUT US'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text('LOGOUT'),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
      ),

      body: Stack(
        children: [
          Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      width: 130,
                      child: Image.asset('Assets/home.png'),
                    ),
                  ),
                ],
              ),

              //Services
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Attendence
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 94, 140, 240),
                              width: 3),
                          borderRadius: BorderRadius.circular(1),
                        ),
                        width: 120,
                        height: 120,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => attendence())));
                              },
                              child: Container(
                                child: Image.asset(
                                  'Assets/10.png',
                                  height: 80,
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 22,
                              color: Color.fromARGB(255, 94, 140, 240),
                              child: Center(
                                child: Text(
                                  'Attendence',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Assignments
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => addAssignments())));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 94, 140, 240),
                                width: 3),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/3.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Assignments',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Faculty
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => facultydettails()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 94, 140, 240),
                                width: 3),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/4.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Faculty',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Notes
                    Center(
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => notes()));
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 94, 140, 240),
                                width: 3),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/5.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Notes',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const cse_book()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              border: Border.all(
                                  color: Color.fromARGB(255, 94, 140, 240),
                                  width: 3)),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/books.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Books',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const profile()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1),
                              border: Border.all(
                                  color: Color.fromARGB(255, 94, 140, 240),
                                  width: 3)),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/create.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Create Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Attendence
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 94, 140, 240),
                              width: 3),
                          borderRadius: BorderRadius.circular(1),
                        ),
                        width: 120,
                        height: 120,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => syllabus())));
                              },
                              child: Container(
                                child: Image.asset(
                                  'Assets/syllabus.png',
                                  height: 80,
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 22,
                              color: Color.fromARGB(255, 94, 140, 240),
                              child: Center(
                                child: Text(
                                  'Syllabus',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Assignments
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => resultdata())));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 94, 140, 240),
                                width: 3),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/3.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Result',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Attendence
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 94, 140, 240),
                              width: 3),
                          borderRadius: BorderRadius.circular(1),
                        ),
                        width: 120,
                        height: 120,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => myprofile())));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  // decoration: BoxDecoration(
                                  //     shape: BoxShape.circle,
                                  //     color: Colors.black),
                                  child: Image.asset(
                                    'Assets/male.png',
                                    height: 64,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 22,
                              color: Color.fromARGB(255, 94, 140, 240),
                              child: Center(
                                child: Text(
                                  'My Profile',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Assignments
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Holiday())));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 94, 140, 240),
                                width: 3),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          width: 120,
                          height: 120,
                          child: Column(
                            children: [
                              Image.asset(
                                'Assets/3.png',
                                height: 80,
                              ),
                              Container(
                                width: 120,
                                height: 22,
                                color: Color.fromARGB(255, 94, 140, 240),
                                child: Center(
                                  child: Text(
                                    'Holidays',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
