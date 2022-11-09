import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class facprofile extends StatefulWidget {
  const facprofile({Key? key}) : super(key: key);

  @override
  State<facprofile> createState() => _facprofileState();
}

class _facprofileState extends State<facprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            color: Color.fromARGB(255, 94, 140, 240),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 520),
            child: Center(
              child: Container(
                  child: Image.asset('Assets/male.png'),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  )
                  // color: Color.fromARGB(255, 240, 199, 94)),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 220, 0, 520),
            child: Center(
                child: Container(
              child: Center(
                  child: Text(
                'KAMTA NATH MISHRA',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 199, 94),
                  borderRadius: BorderRadius.circular(25)),

              // shape: BoxShape.rectangle,
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 450),
            child: Center(
                child: Container(
              child: Center(
                  child: Text(
                'PROFESSOR',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 199, 94),
                  borderRadius: BorderRadius.circular(25)),

              // shape: BoxShape.rectangle,
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 300),
            child: Center(
                child: Container(
              child: Center(
                  child: Text(
                'QUALIFICATIONS',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 199, 94),
                  borderRadius: BorderRadius.circular(25)),

              // shape: BoxShape.rectangle,
            )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => faccontact()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 300, 0, 150),
              child: Center(
                  child: Container(
                child: Center(
                    child: Text(
                  'CONTACT',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 199, 94),
                    borderRadius: BorderRadius.circular(25)),

                // shape: BoxShape.rectangle,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class faccontact extends StatefulWidget {
  const faccontact({Key? key}) : super(key: key);

  @override
  State<faccontact> createState() => _faccontactState();
}

class _faccontactState extends State<faccontact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Container(height: 80, child: Image.asset('Assets/mail.png')),
                  Text('GMAIL')
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      height: 50, child: Image.asset('Assets/linkedin.png')),
                  SizedBox(
                    width: 15,
                  ),
                  Text('LinkedIn')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
