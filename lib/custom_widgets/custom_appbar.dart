import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();
final custombar = AppBar(
  elevation: 0,
  toolbarHeight: 80,
  backgroundColor: Colors.transparent,
  title: Text(
    'STUDENT PORTAL',
    style: TextStyle(color: Colors.white),
  ),
  centerTitle: true,
  flexibleSpace: Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(1),
        color: Color.fromARGB(255, 94, 140, 240)),
  ),
  leading: GestureDetector(
    onTap: () {
      _key.currentState!.openDrawer();
    },
    child: GestureDetector(
      onTap: () {
        _key.currentState!.openDrawer();
      },
      child: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
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
            Icons.logout,
            color: Colors.white,
          )),
    )
  ],
);

final searchappbar = AppBar(
  elevation: 0,
  toolbarHeight: 80,
  backgroundColor: Colors.transparent,
  title: TextField(
    decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintText: 'search books ',
        hintStyle: TextStyle(color: Colors.white)),
  ),
  centerTitle: true,
  flexibleSpace: Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(1),
        color: Color.fromARGB(255, 94, 140, 240)),
  ),
  leading: GestureDetector(
    onTap: () {
      _key.currentState!.openDrawer();
    },
    child: GestureDetector(
      onTap: () {
        _key.currentState!.openDrawer();
      },
      child: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
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
            Icons.search,
            color: Colors.white,
          )),
    )
  ],
);
