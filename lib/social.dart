import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/exam.dart';
import 'package:flutter_application_1/tab.dart';

class friends extends StatefulWidget {
  @override
  State<friends> createState() => _friendsState();
}

class _friendsState extends State<friends> {
  final searchcontroller = TextEditingController();
  final CollectionReference profile =
      FirebaseFirestore.instance.collection('test');
  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 2, 4),
      body: StreamBuilder(
        stream: profile.snapshots(),
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
                                  "assets/service.png",
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "profile",
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
                                    height: 400,
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
                                                            255, 12, 133, 232),
                                                        letterSpacing: 2,
                                                      ),
                                                    ),
                                                    subtitle: Text(
                                                      van["regno"],
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
