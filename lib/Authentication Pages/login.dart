import 'package:bit_d/functions/authfunctions.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';

  bool islogin = false;
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  late DatabaseReference dbRef;

  Query dbQuery = FirebaseDatabase.instance.ref().child('users');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF6F2F2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0, 280, 500),
              child: Container(
                height: 400,
                width: 180,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFFFC648),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(300, 570, 5, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 200,
                width: 300,
                child: CircleAvatar(
                  backgroundColor: Color(0xFF32A5E1),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Container(
                  width: 320,
                  height: 570,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Color(0xFFEDE8E8),
                      border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 100, 40, 0),
                    child: Column(
                      children: [
                        ///////// Full name
                        islogin
                            ? Container()
                            : TextFormField(
                                key: ValueKey('fullname'),

                                //controller takes the input supply it to the signIn function
                                // controller: email,
                                style: TextStyle(),
                                decoration:
                                    InputDecoration(hintText: 'Firstname'),
                                validator: (value) {
                                  if ((value!.isEmpty)) {
                                    return 'Please Enter Your name';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) {
                                  setState(() {
                                    fullname = value!;
                                  });
                                }),

                        //Email
                        TextFormField(
                            key: ValueKey('Enter Email'),

                            //controller takes the input supply it to the signIn function
                            // controller: email,
                            style: TextStyle(),
                            decoration: InputDecoration(hintText: 'Email'),
                            validator: (value) {
                              if (!(value!.contains('@'))) {
                                return 'Enter Valid Email';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              setState(() {
                                email = value!;
                              });
                            }),
                        SizedBox(
                          height: 10,
                        ),
                        //Password
                        TextFormField(
                            obscureText: _isHidden,
                            key: ValueKey('password'),
                            //controller takes the input supply it to the signIn function
                            // controller: email,
                            style: TextStyle(),
                            decoration: InputDecoration(
                                hintText: 'Password',
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(_isHidden
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                )),
                            validator: (value) {
                              if (value!.length < 8) {
                                return 'Enter Password';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              setState(() {
                                password = value!;
                              });
                            }),
                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          height: 50,
                        ),

                        ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                //save the form
                                _formKey.currentState!.save();

                                //after validation of the form check whether the user is already have an account or not
                                //if yes then display home screen else display login screen
                                islogin
                                    ? AuthServices.signinUser(
                                        email, password, context)
                                    : AuthServices.signupUser(
                                        email, password, fullname, context);
                              }
                            },
                            child: Text(islogin ? 'LOGIN' : 'SIGN UP')),

                        SizedBox(
                          height: 7,
                        ),

                        TextButton(
                            onPressed: () {
                              setState(() {
                                islogin = !islogin;
                              });
                            },
                            child: Text(islogin
                                ? 'Don t have an account '
                                : 'Already have an account ? Login')),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 550),
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: 130,
                  width: 150,
                  child: Image.asset('Assets/logo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
