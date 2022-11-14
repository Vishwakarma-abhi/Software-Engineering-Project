import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';

class report extends StatefulWidget {
  const report({Key? key}) : super(key: key);

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
  Query dbQuery = FirebaseDatabase.instance.ref().child('Results');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Results');

  Widget listItem({required Map result}) {
    return Stack(
      children: [
        SizedBox(),
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                    width: 350,
                    height: 420,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.blue,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            "ID - " + result['Student ID'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            "Subject Code :  " + result['Subject Code'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            "Semester - " + result['semester'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            "Year - " + result['year'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await FirebaseAuth.instance.signOut();
                          },
                          child: Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                                child: Text(
                              "Score - " + result['score'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                //Delete Operation
                                reference.child(result['key']).remove();
                              },
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                                size: 35,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 94, 140, 240),
                borderRadius: BorderRadius.circular(15)),
            width: 250,
            height: 50,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'RESULT REPORT',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              child: FirebaseAnimatedList(
                  query: dbQuery,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map resultdata = snapshot.value as Map;
                    resultdata['key'] = snapshot.key;

                    return listItem(result: resultdata);
                  }),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => homeScreen())));
              },
              child: Text('Back'))
        ],
      ),
    );
  }
}







// Container(
//       padding: const EdgeInsets.all(10),
//       margin: const EdgeInsets.all(10),
//       height: 150,
//       decoration: BoxDecoration(
//           color: Colors.blue, borderRadius: BorderRadius.circular(15)),
//       child: Column(
//         children: [
          
//           Text(
//             "Student ID :  " + result['Student ID'],
//             style: TextStyle(fontSize: 25),
//           ),
//           Text(
//             "Subject Code :  " + result['Subject Code'],
//             style: TextStyle(fontSize: 25),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Text(
//             "Semester :  " + result['semester'],
//             style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'year : ' + result['year'],
//             style: TextStyle(fontSize: 15),
//           ),
//           Text(
//             'score : ' + result['score'],
//             style: TextStyle(fontSize: 15),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   //Delete Operation
//                   reference.child(result['key']).remove();
//                 },
//                 child: Icon(
//                   Icons.delete,
//                   color: Theme.of(context).primaryColor,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );