import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/alteration.dart';
import 'package:flutter_application_1/analytics.dart';
import 'package:flutter_application_1/backupcombine.dart';
import 'package:flutter_application_1/chat.dart';
import 'package:flutter_application_1/combine.dart';
import 'package:flutter_application_1/currentuserhistory.dart';
import 'package:flutter_application_1/date.dart';
import 'package:flutter_application_1/analyticscitizen.dart';

import 'package:flutter_application_1/gaurd.dart';
import 'package:flutter_application_1/luck.dart';
import 'package:flutter_application_1/currentuserhistory.dart';
import 'package:flutter_application_1/regii.dart';
import 'package:flutter_application_1/testtest.dart';
import 'package:flutter_application_1/try.dart';
import 'package:flutter_application_1/userprofile.dart';
import 'package:flutter_application_1/link.dart';
import 'package:flutter_application_1/local.dart';
import 'package:flutter_application_1/officer.dart';
import 'package:flutter_application_1/rtotable.dart';
import 'package:flutter_application_1/finalfinespage.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/stream.dart';
import 'package:flutter_application_1/tab.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/zero.dart';

import 'check.dart';

class screenone extends StatefulWidget {
  const screenone({super.key});

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  get bold => null;
  final person = FirebaseAuth.instance.currentUser;
  final screens = [born(), persons(), analysis()];
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          "assets/text.png",
          width: 90,
          height: 90,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        actions: [],
      ),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
        ),
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/text.png"),
            ),
            Container(
              height: 180,
              width: 400,
              child: Image.asset("assets/MVA.gif"),
              color: Colors.black,
            ),
            Center(
                child: Container(
                    width: 400,
                    height: 25,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Sign in as  :   " + person!.email!,
                        style: TextStyle(
                          fontSize: 15,
                          wordSpacing: 2,
                          color: Colors.blue,
                        ),
                      ),
                    ))),
            Divider(
              color: Colors.indigo,
            ),
            SizedBox(
              height: 70,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => tab()));
              },
              title: Text(
                "RTO",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 133, 232),
                    letterSpacing: 2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Information about District Codes",
                style: TextStyle(
                  color: Colors.lightBlue,
                  letterSpacing: 1,
                  fontSize: 12,
                ),
              ),
              leading: Icon(
                Icons.home,
                size: 25,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => rto()));
              },
              title: Text(
                "INFO",
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 133, 232),
                  letterSpacing: 2,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Icon(
                Icons.perm_device_information,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
              subtitle: Text(
                "Information about RTO office",
                style: TextStyle(
                    color: Colors.lightBlue, fontSize: 12, letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => pack()));
              },
              title: Text(
                "USER PROFILE",
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 133, 232),
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              subtitle: Text(
                "Information about User",
                style: TextStyle(
                    color: Colors.lightBlue, fontSize: 12, letterSpacing: 1),
              ),
              leading: Icon(
                Icons.person,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              title: Text(
                "LOG OUT",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 133, 232),
                    letterSpacing: 2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 12, 133, 232),
              ),
            ),
          ],
        ),
      ),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) => setState(() {
          currentindex = index;
        }),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Searching ID",
            icon: Icon(Icons.account_tree),
          ),
          BottomNavigationBarItem(
            label: 'Analytics',
            icon: Icon(
              Icons.analytics,
            ),
          ),
        ],
      ),
    ));
  }
}

class born extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 0,
            ),
            Center(
              child: Image.asset(
                "assets/new.png",
                width: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  height: 150,
                  width: 270,
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        color: Colors.blue, //<-- SEE HERE
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(115, 22, 20, 20),
                    ),
                    onPressed: () {
                      Navigator.of(BuildContext)
                          .push(MaterialPageRoute(builder: (context) => Son()));
                    },
                    child: Image.asset(
                      "assets/fine.png",
                      width: 40,
                      height: 43,
                    ),
                  ),
                ),
                Positioned(
                    top: 60,
                    left: 50,
                    child: Text(
                      ".",
                      style: TextStyle(
                          color: Colors.blue, fontSize: 10, letterSpacing: 1),
                    )),
                Positioned(
                  top: 10,
                  right: 20,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(115, 22, 20, 20),
                    ),
                    onPressed: () {
                      Navigator.of(BuildContext).push(
                          MaterialPageRoute(builder: (context) => time()));
                    },
                    child: Image.asset(
                      "assets/searchh.png",
                      width: 40,
                      height: 43,
                    ),
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 90,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(115, 22, 20, 20),
                    ),
                    onPressed: () {
                      Navigator.of(BuildContext).push(
                          MaterialPageRoute(builder: (context) => fruit()));
                    },
                    child: Image.asset(
                      "assets/police.png",
                      width: 40,
                      height: 43,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
