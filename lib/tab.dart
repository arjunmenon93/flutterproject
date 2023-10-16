import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/exam.dart';
import 'package:flutter_application_1/example.dart';
import 'package:flutter_application_1/licenceview.dart';
import 'package:flutter_application_1/one.dart';
import 'package:flutter_application_1/oneexam.dart';
import 'package:flutter_application_1/you.dart';

import 'finedisplay.dart';

class time extends StatefulWidget {
  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  final CollectionReference done = FirebaseFirestore.instance.collection('veh');

  final searchcontroller = TextEditingController();

  final licencecontroller = TextEditingController();

  @override
  Widget build(BuildContext) {
    return DefaultTabController(
        length: 2,
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
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 5, 6),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 0.6,
                          color: Color.fromARGB(255, 3, 137, 239),
                        ),
                      ),
                      child: Column(
                        children: [
                          Positioned(
                            right: 60,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset("assets/truck.gif"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 35,
                            width: 250,
                            child: TextField(
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              controller: searchcontroller,
                              decoration: InputDecoration(
                                hintText:
                                    "Enter the vehicle registration number",
                                hintStyle: TextStyle(
                                    letterSpacing: 1,
                                    color: Colors.blue,
                                    fontSize: 10),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  width: 0.5,
                                  color: Colors.blue,
                                )),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.5,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 58, 35, 184),
                              ),
                              onPressed: () {
                                fun(BuildContext);
                              },
                              child: Text(
                                "SUBMIT",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          Positioned(
                            right: 60,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset("assets/h.gif"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 35,
                            width: 250,
                            child: TextField(
                              controller: licencecontroller,
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                hintText: "Enter licence number",
                                hintStyle: TextStyle(
                                    letterSpacing: 1,
                                    color: Colors.blue,
                                    fontSize: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.5,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 58, 35, 184),
                              ),
                              onPressed: () {
                                run(BuildContext);
                              },
                              child: Text("SUBMIT"),
                            ),
                          ),
                        ],
                      ),
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 5, 6),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 0.6,
                          color: Color.fromARGB(255, 3, 137, 239),
                        ),
                      ),
                    ),
                  )
                ],
              )
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
