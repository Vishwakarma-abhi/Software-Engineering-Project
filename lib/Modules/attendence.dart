import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pie_chart/pie_chart.dart';

class attendence extends StatefulWidget {
  const attendence({Key? key}) : super(key: key);

  @override
  State<attendence> createState() => _attendenceState();
}

class _attendenceState extends State<attendence> {
  Map<String, double> dataMap = {
    "Present Days": 65,
    "Absent Days": 15,
    "Leave Days": 20
  };

  List<Color> colorList = [
    const Color(0xFF5EDFC6),
    Color.fromARGB(255, 242, 106, 85),
    Color.fromARGB(255, 252, 197, 78),
  ];

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Text(
              'ATTENDENCE',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: PieChart(
              dataMap: dataMap,
              chartType: ChartType.disc,
              baseChartColor: Colors.grey[300]!,
              colorList: colorList,
            ),
          ),
        ],
      ),
    );
  }
}
