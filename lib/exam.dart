import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/alterationfinedisplay.dart';
import 'package:flutter_application_1/check.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/vehiclefinedisplay.dart';

class cow extends StatefulWidget {
  final name;

  cow({required this.name});

  @override
  State<cow> createState() => _cowState();
}

class _cowState extends State<cow> {
  final CollectionReference done =
      FirebaseFirestore.instance.collection('vehicledetails');
  final searchcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('vehicledetails')
              .where('regno', isEqualTo: widget.name)
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
                                            like["img"],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
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
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) => friends(
                                                      hello: widget.name),
                                                ));
                                              },
                                              child: Text(
                                                "ALTERATION FINE",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              )),
                                        ),
                                      ],
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
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  vehicle(regg: widget.name),
                                            ));
                                          },
                                          child: Text(
                                            "VIEW FINE",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          )),
                                    )
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
                                                        "OWNER NAME",
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
                                                        like["ownername"],
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
                                                        like["address"],
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
                                                        "CHASSIS NO",
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
                                                        like["chassisno"],
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
                                                        "ENGINE NO",
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
                                                        like["enginno"],
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
                                                        "MODEL NAME",
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
                                                        like["modelname"],
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
                                                        "MAKER NAME",
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
                                                        like["makername"],
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
                                                        "MAKER NAME",
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
                                                        like["makername"],
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
                                                        "FUEL TYPE",
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
                                                        like["fuel"],
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
                                                        "COLOUR",
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
                                                        like["color"],
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
                                                        "REGISTRATION DATE",
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
                                                        like["regdate"],
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
                                                        "INSURANCE VALIDITY",
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
                                                        like["insurance"],
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
                                                        "TAX VALIDITY",
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
                                                        like["tax"],
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
                                                        "FITNESS VALIDITY",
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
                                                        like["fitness"],
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
                                                        "PUCC",
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
                                                        like["pollution"],
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
                                                        like["vehicleclass"],
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
                                                        "SEAT CAPACITY",
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
                                                        like["seat"],
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
                                                        "REGISTRATION AUTHORITY",
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
                                                        like["reg"],
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
