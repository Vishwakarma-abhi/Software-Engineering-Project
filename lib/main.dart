import 'package:flutter/material.dart';
import 'Login_page.dart';

void main() => runApp(MaterialApp(
      home: myapp(),
    ));

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Login_page();
  }
}
