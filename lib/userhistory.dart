import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/alterationfinedisplay.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/userhistorydisplay.dart';
import 'package:flutter_application_1/vehiclefinedisplay.dart';

class history extends StatefulWidget {
  final name;

  history({required this.name});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  final CollectionReference done =
      FirebaseFirestore.instance.collection('vehicledetails');
  final searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('user')
              .where('email', isEqualTo: widget.name)
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
                                  child: Text(
                                    " USER DETAILS",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 25,
                                      letterSpacing: 1,
                                      wordSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Center(
                                    child: SizedBox(
                                  child: Image.network('${like["img"]}'),
                                  height: 100,
                                  width: 100,
                                )),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                    height: 300,
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
                                                      "USER NAME",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      like["name"],
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
                                                      "USER ID",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      like["id"],
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
                                                      "EMAIL",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      like["email"],
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        letterSpacing: 1,
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ),
                                                  ListTile(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .push(
                                                              MaterialPageRoute(
                                                        builder: (context) =>
                                                            man(
                                                                post: widget
                                                                    .name),
                                                      ));
                                                    },
                                                    title: Text(
                                                      "USER HISTORY",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      "View History",
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
                                  ),
                                ),
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
                    "INVALID USER",
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
