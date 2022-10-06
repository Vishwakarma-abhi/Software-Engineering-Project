import 'package:bit_d/Signup_page.dart';
import 'package:bit_d/home_screen.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
                    child: Container(
                      child: Image.asset('Assets/logo.png'),
                      height: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
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
                Container(
                    width: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const homeScreen()),
                        );
                      },
                      child: Text('Login'),
                    )),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text('OR'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup_page()));
                  },
                  child: Container(
                      child: Text(
                    'New Account',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
