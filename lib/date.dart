import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class date extends StatelessWidget {
  final unioun = DateFormat.yMMMMEEEEd().format(DateTime.now());
  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              print(unioun);
            },
            child: Text("go")),
      ),
    ));
  }
}
