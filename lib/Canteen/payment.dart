import 'package:flutter/material.dart';

class paymentoptions extends StatefulWidget {
  const paymentoptions({Key? key}) : super(key: key);

  @override
  State<paymentoptions> createState() => _paymentoptionsState();
}

class _paymentoptionsState extends State<paymentoptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Options'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black),
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/cod.png',
                        height: 100,
                      ),
                      Center(
                        child: Text(
                          'COD',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              width: 15,
              height: 15,
            ),
            Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black),
                    borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/online.png',
                        height: 100,
                      ),
                      Text('Online',
                          style: TextStyle(
                            fontSize: 30,
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
