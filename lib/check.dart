import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/firstscreen.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/registration.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return screenone();
          } else {
            return login();
          }
        },
      ),
    );
  }
}
