import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/alterationfinedisplay.dart';
import 'package:flutter_application_1/gaurd.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/vehiclefinedisplay.dart';

class veh extends StatefulWidget {
  final car;
  veh({required this.car});

  @override
  State<veh> createState() => _vehState();
}

class _vehState extends State<veh> {
  final CollectionReference done =
      FirebaseFirestore.instance.collection('vehicledetails');
  final searchcontroller = TextEditingController();
  final person = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('vehiclefine')
              .where('officer', isEqualTo: widget.car)
              .snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot like = snapshot.data.docs[index];
                  return SizedBox(
                      width: double.infinity,
                      height: 950,
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Card(
                            color: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Image.asset(
                                    "assets/text.png",
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                Center(
                                  child: SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: Image.asset("assets/bluetruck.png"),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "VEHICLE FINE HISTORY",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 23,
                                      wordSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Container(
                                      height: 450,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: ListView(
                                          children: [
                                            Card(
                                                color: Color.fromARGB(
                                                    255, 13, 16, 18),
                                                child: Column(
                                                  children: [
                                                    ListTile(
                                                      onTap: () {},
                                                      title: Text(
                                                        "REGISTRATION NO",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              12,
                                                              133,
                                                              232),
                                                          letterSpacing: 2,
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        like["regno"],
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          letterSpacing: 1,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                    ListTile(
                                                      onTap: () {},
                                                      title: Text(
                                                        "OFFENCE",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              12,
                                                              133,
                                                              232),
                                                          letterSpacing: 2,
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        like["fine"].toString(),
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          letterSpacing: 1,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                    ListTile(
                                                      onTap: () {},
                                                      title: Text(
                                                        "LOCATION",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              12,
                                                              133,
                                                              232),
                                                          letterSpacing: 2,
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        like["location"],
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          letterSpacing: 1,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                    ListTile(
                                                      onTap: () {},
                                                      title: Text(
                                                        "DATE AND TIME",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              12,
                                                              133,
                                                              232),
                                                          letterSpacing: 2,
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        like["datetime"],
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          letterSpacing: 1,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                    ListTile(
                                                      onTap: () {},
                                                      title: Text(
                                                        "STATUS",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              12,
                                                              133,
                                                              232),
                                                          letterSpacing: 2,
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        like["status"],
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          letterSpacing: 1,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          )));
                },
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "NO FINE",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
