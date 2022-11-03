import 'package:bit_d/Authentication%20Pages/login.dart';
import 'package:bit_d/Modules/create_profile.dart';
import 'package:bit_d/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: driver(),
  ));
}

class driver extends StatefulWidget {
  const driver({Key? key}) : super(key: key);

  @override
  State<driver> createState() => _driverState();
}

class _driverState extends State<driver> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return homeScreen();
          } else {
            return loginpage();
          }
        });
  }
}
