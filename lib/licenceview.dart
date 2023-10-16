import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/alterationfinedisplay.dart';
import 'package:flutter_application_1/citizenfinedisplay.dart';
import 'package:flutter_application_1/rtotable.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/userprofile.dart';

class licence extends StatefulWidget {
  final display;

  licence({required this.display});

  @override
  State<licence> createState() => _licenceState();
}

class _licenceState extends State<licence> {
  final CollectionReference len =
      FirebaseFirestore.instance.collection('citizendetails');
  final licencecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('citizendetails')
              .where('licenceno', isEqualTo: widget.display)
              .snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot len = snapshot.data.docs[index];
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Card(
                                        color: Color.fromARGB(255, 13, 16, 18),
                                        child: SizedBox(
                                          width: 130,
                                          height: 130,
                                          child: Image.network(
                                            len["img"],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 30),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            side: const BorderSide(
                                              width: 1,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          onPressed: () async {
                                            await Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) => citizen(
                                                value: widget.display,
                                              ),
                                            ));
                                          },
                                          child: Text(
                                            "VIEW FINE",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          )),
                                    ),
                                  ],
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
                                                        "NAME",
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
                                                        len["name"],
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
                                                        "LICENCE NO",
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
                                                        len["licenceno"],
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
                                                        "ADDRESS",
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
                                                        len["address"],
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
                                                        "DATE OF BIRTH",
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
                                                        len["dob"],
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
                                                        "BLOOD GROUP",
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
                                                        len["blood"],
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
                                                        "VALID FROM",
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
                                                        len["validfrom"],
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
                                                        "VALID TO",
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
                                                        len["validto"],
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
                                                        "VEHICLE CLASS",
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
                                                        len["class"],
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
                    "INVALID REGISTRATION NUMBER",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  test() async {}
}
