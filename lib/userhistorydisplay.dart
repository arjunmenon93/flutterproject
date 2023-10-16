import 'package:flutter/material.dart';
import 'package:flutter_application_1/currentuseralterationhistory.dart';
import 'package:flutter_application_1/currentusercitizenfine.dart';
import 'package:flutter_application_1/currentuservehiclefine.dart';
import 'package:flutter_application_1/useralterationhistory.dart';
import 'package:flutter_application_1/usercitizenfinehistory.dart';
import 'package:flutter_application_1/uservehiclefinehistory.dart';

class man extends StatefulWidget {
  final post;

  man({required this.post});
  @override
  State<man> createState() => _manState();
}

class _manState extends State<man> {
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 12, 36, 55),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blue,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          onTap: (value) {},
          items: const [
            BottomNavigationBarItem(
              label: "Searching ID",
              icon: Icon(Icons.account_tree),
            ),
            BottomNavigationBarItem(
              label: 'Analytics',
              icon: Icon(
                Icons.analytics,
              ),
            ),
            BottomNavigationBarItem(
              label: "My Account",
              icon: Icon(Icons.account_box),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 280,
                height: 200,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => veh(car: widget.post),
                      ));
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
                height: 200,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => modf(hello: widget.post),
                      ));
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
                height: 200,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => city(truck: widget.post),
                      ));
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
