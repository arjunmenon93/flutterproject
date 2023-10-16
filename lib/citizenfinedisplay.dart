import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/exam.dart';
import 'package:flutter_application_1/tab.dart';

class citizen extends StatefulWidget {
  final value;
  citizen({required this.value});

  @override
  State<citizen> createState() => _citizenState();
}

class _citizenState extends State<citizen> {
  final searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 2, 4),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('citizenfine')
            .where('licenceno', isEqualTo: widget.value)
            .snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot van = snapshot.data.docs[index];

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
                                child: Image.asset(
                                  "assets/city.png",
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "CITIZEN FINE",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30,
                                    wordSpacing: 10,
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
                                                      "DRIVING LICENCE NO",
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
                                                      van["licenceno"],
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
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      van["fine"].toString(),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        letterSpacing: 1,
                                                        wordSpacing: 5,
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
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      van["location"],
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
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      van["datetime"],
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
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      van["status"],
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
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        },
      ),
    ));
  }
}
