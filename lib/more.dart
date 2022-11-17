import 'package:bit_d/custom_widgets/custom_appbar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreFeatures extends StatefulWidget {
  const MoreFeatures({Key? key}) : super(key: key);

  @override
  State<MoreFeatures> createState() => _MoreFeaturesState();
}

final platforms = [
  'https://www.geeksforgeeks.org/',
  'https://leetcode.com/problemset/all/',
  'https://internshala.com/internships/'
      'https://youtube.com/c/takeUforward',
  'https://youtube.com/@ArshGoyal',
  'https://youtube.com/@GateSmashers',
  'https://youtube.com/@ApnaCollegeOfficial'
      'https://www.youtube.com/@CodeHelp',
  'https://www.youtube.com/c/CodeWithHarry'
      'https://practice.geeksforgeeks.org/problem-of-the-day'
];

class _MoreFeaturesState extends State<MoreFeatures> {
  _launchGFG() async {
    var url = Uri.parse(platforms[0]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchINTERNSHALA() async {
    var url = Uri.parse(platforms[2]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchLEETCODE() async {
    var url = Uri.parse(platforms[1]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchPROBLEMDAY() async {
    var url =
        Uri.parse('https://practice.geeksforgeeks.org/problem-of-the-day');
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchTUTOR() async {
    var url = Uri.parse('https://www.tutorialspoint.com/index.htm');
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: custombar,
        body: Stack(
          children: [
            ListView(children: [
              SizedBox(
                height: 50,
              ),
              CarouselSlider(
                items: [
                  GestureDetector(
                    onTap: _launchLEETCODE,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 5)),
                      width: 350,
                      height: 150,
                      child: Image.asset(
                        'Assets/leetcode.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _launchINTERNSHALA,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 5)),
                      width: 350,
                      height: 200,
                      child: Image.asset(
                        'Assets/INTERN.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _launchGFG,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 5)),
                      width: 350,
                      height: 200,
                      child: Image.asset(
                        'Assets/gfg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ]),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 300, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => YoutubeChannels()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 5)),
                              width: 150,
                              height: 90,
                              child: Image.asset('Assets/Youtube.png'),
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 5)),
                            width: 150,
                            height: 90,
                            child: GestureDetector(
                                onTap: () => _launchTUTOR(),
                                child: Image.asset('Assets/tutor.png')),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(4, 0, 40, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 5)),
                                width: 150,
                                height: 250,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'Assets/problemday.png',
                                      height: 170,
                                    ),
                                    Container(
                                        width: 250,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: Center(
                                          child: GestureDetector(
                                            onTap: () => _launchPROBLEMDAY(),
                                            child: Container(
                                              child: Text(
                                                'PROBLEM OF THE DAY',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class YoutubeChannels extends StatefulWidget {
  const YoutubeChannels({Key? key}) : super(key: key);

  @override
  State<YoutubeChannels> createState() => _YoutubeChannelsState();
}

class _YoutubeChannelsState extends State<YoutubeChannels> {
  _launchSTRIVER() async {
    var url = Uri.parse('https://www.youtube.com/c/takeUforward');
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchAPNA() async {
    var url = Uri.parse(platforms[5]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGATE() async {
    var url = Uri.parse(platforms[4]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchARSH() async {
    var url = Uri.parse(platforms[5]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchLOVE() async {
    var url = Uri.parse(platforms[6]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchHARRY() async {
    var url = Uri.parse(platforms[7]);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custombar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'YOUTUBE CHANNELS',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 7)),
                  child: Center(
                    child: Container(
                      child: GestureDetector(
                          onTap: () => _launchSTRIVER(),
                          child: Image.asset('Assets/striver.png')),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 7)),
                  child: Center(
                    child: Container(
                      child: GestureDetector(
                          onTap: () => _launchARSH(),
                          child: Image.asset('Assets/arshgoyal.png')),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15,
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  // onTap: () => _launchAPNA,
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Container(
                        child: GestureDetector(
                            onTap: () => _launchAPNA(),
                            child: Image.asset('Assets/apna.png')),
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  // onTap: () => _launchGATE,
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 7),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Container(
                        child: GestureDetector(
                            onTap: () => _launchGATE(),
                            child: Image.asset('Assets/gates.png')),
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 15,
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 7)),
                  child: Center(
                    child: Container(
                      child: GestureDetector(
                          onTap: () => _launchLOVE(),
                          child: Image.asset('Assets/babbar.png')),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 7)),
                  child: Center(
                    child: Container(
                      child: GestureDetector(
                          onTap: () => _launchHARRY(),
                          child: Image.asset('Assets/harry.png')),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
