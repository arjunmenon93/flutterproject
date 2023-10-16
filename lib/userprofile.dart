import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/currentuserhistory.dart';

import 'currentuserhistory.dart';

class pack extends StatelessWidget {
  final person = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          "assets/text.png",
          width: 90,
          height: 90,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 12, 36, 55),
        actions: [
          IconButton(
            color: Color.fromARGB(255, 92, 118, 197),
            splashColor: Colors.green,
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('user')
            .where('email', isEqualTo: person!.email!)
            .snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot display = snapshot.data.docs[index];
                return SizedBox(
                  width: double.infinity,
                  height: 800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Card(
                              color: Color.fromARGB(255, 13, 16, 18),
                              child: Center(
                                child: Text(
                                  "USER PROFILE",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )),
                      Center(
                          child: SizedBox(
                        child: Image.network('${display["img"]}'),
                        height: 100,
                        width: 100,
                      )),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          color: Color.fromARGB(255, 13, 16, 18),
                          width: double.infinity,
                          height: 360,
                          child: Card(
                            color: Color.fromARGB(255, 13, 16, 18),
                            child: Column(
                              children: [
                                ListTile(
                                  onTap: () {},
                                  title: Text(
                                    "USER NAME",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 12, 133, 232),
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  subtitle: Text(
                                    display["name"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {},
                                  title: Text(
                                    "OFFICER ID",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 12, 133, 232),
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  subtitle: Text(
                                    display["id"],
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {},
                                  title: Text(
                                    "EMAIL",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 12, 133, 232),
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  subtitle: Text(
                                    display['email'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {},
                                  title: Text(
                                    "PASSWORD",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 12, 133, 232),
                                      letterSpacing: 2,
                                    ),
                                  ),
                                  subtitle: Text(
                                    display['password'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color.fromARGB(255, 13, 16, 18),
                                            side: const BorderSide(
                                              width: 1,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          onPressed: () async {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        currenthistory()));
                                          },
                                          child: Text(
                                            "VIEW HISTORY",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return Text("sorry");
        },
      ),
    ));
  }
}
