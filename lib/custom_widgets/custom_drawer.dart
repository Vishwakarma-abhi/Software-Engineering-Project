import 'package:bit_d/Modules/aboutus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

erplauncher() async {
  Uri url = Uri.parse(
      'https://www.bing.com/ck/a?!&&p=de62e88beb2af036e206a699c29d3f7f2b4ed29292182e7a95a7df6ebceff299JmltdHM9MTY1NTAxNDE4NyZpZ3VpZD1lODg0NDYzZS1kMGViLTQzNWUtYTliYi00Yjc2MzRkMTRmZDAmaW5zaWQ9NTE2NQ&ptn=3&fclid=42ca237f-ea16-11ec-adb1-71608ad9e5f1&u=a1aHR0cHM6Ly9lcnAuYml0bWVzcmEuYWMuaW4v&ntb=1/');
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
    );
  } else {
    throw 'Could not launch $url';
  }
}

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
          leading: GestureDetector(onTap: () {}, child: Icon(Icons.web)),
          title: const Text('ERP'),
          onTap: () {},
        ),
        ListTile(
          leading: GestureDetector(onTap: () {}, child: Icon(Icons.shop)),
          title: const Text('CANTEEN'),
          onTap: () async {},
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: GestureDetector(child: const Text('ABOUT US')),
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
