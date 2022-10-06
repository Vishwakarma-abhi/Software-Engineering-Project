import 'package:flutter/material.dart';
import 'package:bit_d/Login_page.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
        child: Scaffold(
          body: Column(children: [
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 60, 0.0, 0.0),
              child: Center(
                child: Text(
                  'MODULES',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 600, 0.0, 0.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login_page()));
                  },
                  child: Text('Back')),
            )
          ]),
        ),
      ),
    );
  }
}
