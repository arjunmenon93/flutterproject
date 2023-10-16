import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/currentuseralterationhistory.dart';
import 'package:flutter_application_1/currentusercitizenfine.dart';
import 'package:flutter_application_1/exam.dart';
import 'package:flutter_application_1/example.dart';
import 'package:flutter_application_1/licenceview.dart';
import 'package:flutter_application_1/one.dart';
import 'package:flutter_application_1/oneexam.dart';
import 'package:flutter_application_1/you.dart';

import 'currentuservehiclefine.dart';
import 'finedisplay.dart';

class currenthistory extends StatefulWidget {
  @override
  State<currenthistory> createState() => _currenthistoryState();
}

class _currenthistoryState extends State<currenthistory> {
  final CollectionReference done = FirebaseFirestore.instance.collection('veh');

  final searchcontroller = TextEditingController();

  final licencecontroller = TextEditingController();

  @override
  Widget build(BuildContext) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.fire_truck,
                  color: Colors.blue,
                )),
                Tab(
                    icon: Icon(
                  Icons.car_repair,
                  color: Colors.blue,
                )),
                Tab(
                    icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                )),
              ],
            ),
            title: Image.asset(
              "assets/text.png",
              width: 90,
              height: 90,
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 12, 36, 55),
            actions: [],
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 280,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(BuildContext).push(MaterialPageRoute(
                                builder: (context) => pond()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            color: Color.fromARGB(255, 13, 16, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset("assets/bluetruck.png"),
                                ),
                                Text(
                                  "VEHICLE  FINE",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    wordSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 280,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(BuildContext).push(MaterialPageRoute(
                                builder: (context) => well()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            color: Color.fromARGB(255, 13, 16, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset("assets/maintenance.png"),
                                ),
                                Text(
                                  "ALTERATION   FINE",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    wordSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 400,
                      height: 280,
                      color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(BuildContext).push(MaterialPageRoute(
                                builder: (context) => tank()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            color: Color.fromARGB(255, 13, 16, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset("assets/bluelicence.png"),
                                ),
                                Text(
                                  "CITIZEN  FINE",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2,
                                    wordSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }

  void fun(BuildContext) async {
    final text1 = searchcontroller.text;

    if (text1.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blue,
            title: Text("Error"),
            content: Text(
              "Please Enter the Registration number",
              style: TextStyle(),
            ),
            actions: [
              TextButton(
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    } else {
      await Navigator.of(BuildContext).push(MaterialPageRoute(
        builder: (context) => cow(
          name: searchcontroller.text,
        ),
      ));
    }
  }

  void run(BuildContext) async {
    final text2 = licencecontroller.text;
    if (text2.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.blue,
            title: Text("Error"),
            content: Text("Please Enter the Licence number"),
            actions: [
              TextButton(
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        },
      );
    } else {
      await Navigator.of(BuildContext).push(MaterialPageRoute(
        builder: (context) => licence(
          display: licencecontroller.text,
        ),
      ));
    }
  }
}
