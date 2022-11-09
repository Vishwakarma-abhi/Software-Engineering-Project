import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final customdrawer = Drawer(
  child: Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromARGB(
              255,
              94,
              140,
              240,
            )),
            child: Column(
              children: [
                Image.asset(
                  'Assets/home.png',
                  height: 100,
                ),
                Center(
                  child: Text(
                    ' WELCOME ',
                    // + username!.toUpperCase(),
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            )),
        ListTile(
          leading: Icon(
            Icons.home,
          ),
          title: const Text('HOME'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: const Text('ERP'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: const Text('ABOUT US'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: const Text('LOGOUT'),
          onTap: () async {
            await FirebaseAuth.instance.signOut();
          },
        ),
      ],
    ),
  ),
);
