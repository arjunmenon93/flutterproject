import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/registration.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  final emailcontroller = TextEditingController();

  final passcontroller = TextEditingController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 12, 36, 55),
          child: Center(
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              shadowColor: Colors.black,
              color: Color.fromARGB(255, 12, 36, 55),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 250,
                        ),
                        Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              hintText: "email",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.8,
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: passcontroller,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.8,
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () async {
                              try {
                                await FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailcontroller.text,
                                        password: passcontroller.text);
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'user-not-found') {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.blue,
                                        title: Text("Error"),
                                        content: Text(
                                          " invalid email",
                                          style: TextStyle(),
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text(
                                              "OK",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } else if (e.code == 'wrong-password') {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.blue,
                                        title: Text("Error"),
                                        content: Text(
                                          "Invalid password",
                                          style: TextStyle(),
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text(
                                              "OK",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }
                            },
                            child: Text("Log In"),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            width: 320,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => reg()),
                                );
                              },
                              child: Text(
                                "Don't have an account? Signup for MVA",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
