import 'package:bit_d/Canteen/menu.dart';
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
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            //   child: Center(
            //     child: Container(
            //       decoration: BoxDecoration(
            //           color: Colors.red,
            //           borderRadius: BorderRadius.circular(35)),
            //       width: 200,
            //       height: 50,
            //       child: Center(
            //           child: Text(
            //         'BIT CANTEEN',
            //         style: TextStyle(
            //             fontSize: 25,
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white),
            //       )),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/chief.png',
                  height: 100,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(35)),
                  width: 200,
                  height: 50,
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MenuList()));
                    },
                    child: Text(
                      'MENU',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/p1.jpg'),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                              width: 80,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                'ORDER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black, width: 4)),
                      width: 150,
                      height: 210,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'Assets/c1.png',
                            height: 110,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                              width: 80,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                'ORDER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black, width: 4)),
                      width: 150,
                      height: 210,
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/burger.jpg'),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                              width: 80,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                'ORDER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black, width: 4)),
                      width: 150,
                      height: 210,
                    ),
                    SizedBox(
                      height: 20,
                      width: 15,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('Assets/c4.png'),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                              width: 80,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                'ORDER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )))
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: Colors.black, width: 4)),
                      width: 150,
                      height: 210,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
