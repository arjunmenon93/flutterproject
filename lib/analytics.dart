import 'package:flutter/material.dart';
import 'package:flutter_application_1/analyticsalteration.dart';
import 'package:flutter_application_1/analyticsvehicle.dart';
import 'package:flutter_application_1/currentuseralterationhistory.dart';
import 'package:flutter_application_1/currentusercitizenfine.dart';
import 'package:flutter_application_1/currentuservehiclefine.dart';
import 'package:flutter_application_1/analyticscitizen.dart';
import 'package:intl/intl.dart';

class analysis extends StatelessWidget {
  final unioun = DateFormat.yMMMMEEEEd().format(DateTime.now());
  @override
  Widget build(BuildContext) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "FINE ANALYSIS",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Here the Analysis is Based on  $unioun",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 280,
                height: 150,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(BuildContext).push(
                          MaterialPageRoute(builder: (context) => anveh()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("assets/bluetruck.png"),
                          ),
                          Text(
                            "VEHICLE  FINE",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              wordSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 280,
                height: 150,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(BuildContext).push(
                          MaterialPageRoute(builder: (context) => altt()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("assets/maintenance.png"),
                          ),
                          Text(
                            "ALTERATION FINE",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              wordSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 280,
                height: 150,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(BuildContext).push(
                          MaterialPageRoute(builder: (context) => place()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("assets/bluelicence.png"),
                          ),
                          Text(
                            "CITIZEN FINE",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              wordSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
