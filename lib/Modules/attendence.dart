import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:bit_d/custom_widgets/custom_drawer.dart';
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
      appBar: custombar,
      drawer: customdrawer,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
        child: Column(
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
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
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
      ),
    );
  }
}
