import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

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
            height: 190,
            width: 500,
            child: Image.asset('Assets/acad.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 520),
            child: Center(
              child: Container(
                  child: Image.asset('Assets/knmSir.png'),
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
            padding: const EdgeInsets.fromLTRB(0, 230, 0, 520),
            child: Center(
                child: Container(
              child: Center(
                  child: Text(
                'DR. KAMTA NATH MISHRA',
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
                'ASS. PROFESSOR',
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
                child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const pdf()),
                );
              },
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
              ),
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

//classed for opening pdfs
class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: custombar,
          body: Container(child: SfPdfViewer.asset('Assets/qknm.pdf'))),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //gmail
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 50, 0, 0),
                child: SizedBox(
                  height: 50,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homeScreen()));
                    },
                    child: Image.asset('Assets/linkedin.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text(
                  'View Assignments',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),

          //Linkedin
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 50, 0, 0),
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  hoverColor: Colors.blue,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homeScreen()));
                  },
                  child: Image.asset('Assets/mail.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text(
                  'GMAIL',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
