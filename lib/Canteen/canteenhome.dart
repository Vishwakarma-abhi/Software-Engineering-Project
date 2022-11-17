import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Canteen extends StatefulWidget {
  const Canteen({Key? key}) : super(key: key);

  @override
  State<Canteen> createState() => _CanteenState();
}

class _CanteenState extends State<Canteen> {
  get boxdecor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CANTEEN PORTAL'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(35)),
                  width: 200,
                  height: 50,
                  child: Center(
                      child: Text(
                    'WELCOME',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Image.asset('Assets/CSE.png'),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black)),
                      width: 150,
                      height: 180,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
