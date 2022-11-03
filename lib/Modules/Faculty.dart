import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class facultydettails extends StatefulWidget {
  const facultydettails({Key? key}) : super(key: key);

  @override
  State<facultydettails> createState() => _facultydettailsState();
}

class _facultydettailsState extends State<facultydettails> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(50),
                  child: Center(
                      child: Text(
                    'FACULTY DETAILS',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ))),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Kamta Nath Sir',
                      style: TextStyle(fontSize: 20),
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
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Rayees Ahmed Sir',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'Sounak Paul Sir',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'KNM Mishra Sir',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'KNM Mishra Sir',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'KNM Mishra Sir',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 150,
                    child: Image.asset('Assets/profile.png'),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 30.0),
                    width: 200,
                    height: 150,
                    child: Text(
                      'KNM Mishra Sir',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
