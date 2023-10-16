import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class rough extends StatelessWidget {
  rough(DocumentSnapshot<Object?> like);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 6, 0, 0),
        appBar: AppBar(
          title: Image.asset(
            "assets/text.png",
            width: 90,
            height: 90,
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 12, 36, 55),
          actions: [
            IconButton(
              color: const Color.fromARGB(255, 92, 118, 197),
              splashColor: Colors.green,
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 12, 36, 55),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blue,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          onTap: (value) {},
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
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
        body: Stack(
          children: [
            Positioned(
              top: 20,
              left: 30,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 23, 23, 23),
                  border: Border.all(
                    width: 1,
                    color: Color.fromARGB(255, 0, 8, 14),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset("assets/an.png"),
                ),
              ),
            ),
            Center(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Positioned(
                                    right: 60,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          height: 50,
                                          child:
                                              Image.asset("assets/truck.gif"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText:
                                            "Enter the vehicle registration number",
                                        hintStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.blue,
                                            fontSize: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 0.5,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 58, 35, 184),
                                      ),
                                      onPressed: () {},
                                      child: Text("submit"),
                                    ),
                                  ),
                                ],
                              ),
                              width: 300,
                              height: 180,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 169, 192, 196),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 0.6,
                                  color: Color.fromARGB(255, 3, 137, 239),
                                ),
                              ),
                            ),
                          ],
                        ),
                        width: 383,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 6, 6, 6),
                          ),
                          color: Color.fromARGB(255, 0, 2, 3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Positioned(
                                    right: 60,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: Image.asset("assets/h.gif"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 35,
                                    width: 250,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "DLMNC00120016",
                                        hintStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.blue,
                                            fontSize: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 0.5,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 58, 35, 184),
                                      ),
                                      onPressed: () {},
                                      child: Text("submit"),
                                    ),
                                  ),
                                ],
                              ),
                              width: 300,
                              height: 180,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 5, 6),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 0.6,
                                  color: Color.fromARGB(255, 3, 137, 239),
                                ),
                              ),
                            ),
                          ],
                        ),
                        width: 383,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(255, 6, 6, 6),
                          ),
                          color: Color.fromARGB(255, 0, 2, 3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                width: 400,
                height: 230,
                color: const Color.fromARGB(255, 31, 8, 8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
