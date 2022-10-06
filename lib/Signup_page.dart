import 'package:flutter/material.dart';
import 'Login_page.dart';

class signup_page extends StatefulWidget {
  const signup_page({Key? key}) : super(key: key);

  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                  child: Container(
                    child: Image.asset('Assets/profile.png'),
                    height: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: 250,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(hintText: 'Full Name'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: 250,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: 250,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: TextField(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 15, 0.0, 0.0),
                child: ElevatedButton(
                    onPressed: () {
                      //save the data into databse and switch to login page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_page()));
                    },
                    child: const Text('Register')),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
