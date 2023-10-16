import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';

class tr extends StatefulWidget {
  final name;
  tr({required this.name});

  @override
  State<tr> createState() => _trState();
}

class _trState extends State<tr> {
  final CollectionReference done = FirebaseFirestore.instance.collection('veh');
  List<String> docIds = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('vh')
              .where('regno', isEqualTo: widget.name)
              .snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot like = snapshot.data.docs[index];
                  return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('fines')
                        .where('regno', isEqualTo: widget.name)
                        .snapshots(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            final DocumentSnapshot make =
                                snapshot.data.docs[index];
                            return SizedBox(
                              child: Column(
                                children: [
                                  Text(make['location']),
                                  Text(like['ownername']),
                                  Text(make['offence']),
                                ],
                              ),
                            );
                          },
                        );
                      }
                      return SizedBox(
                          child: Column(
                        children: [
                          Center(child: Text(like['regno'])),
                          Text(like['regno']),
                          Text(like['ownername']),
                        ],
                      ));
                    },
                  );
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
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
