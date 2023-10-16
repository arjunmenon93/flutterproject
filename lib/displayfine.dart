import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class check extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 13, 16, 18),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Card(
            color: Color.fromARGB(255, 12, 36, 55),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Image.asset(
                    "assets/text.png",
                    width: 90,
                    height: 90,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 13, 16, 18),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Table(
                            border: TableBorder.all(
                                width: 0.5,
                                color: Color.fromARGB(255, 13, 16, 18),
                                borderRadius: BorderRadius.circular(5)),
                            children: const [
                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Center(
                                    child: Text(
                                      "REG NO",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Center(
                                    child: Text(
                                      "RTO",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Center(
                                    child: Text(
                                      "NAME",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(13),
                                  child: Center(
                                    child: Text(
                                      "Thankarajan N",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
