import 'dart:ui';

import 'package:flutter/material.dart';

class displayfine extends StatefulWidget {
  @override
  State<displayfine> createState() => _displayfineState();
}

class _displayfineState extends State<displayfine> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Container(
                width: 370,
                height: 570,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 20,
                    shadowColor: Colors.blue,
                    color: Color.fromARGB(255, 13, 16, 18),
                    // Color.fromARGB(255, 13, 16, 18),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset("assets/bluetruck.png"),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "VEHICLE FINE",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            wordSpacing: 2,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 260,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "KL42R9290",
                                      hintStyle: TextStyle(
                                          letterSpacing: 1,
                                          color: Colors.blue,
                                          fontSize: 10),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 0.8,
                                            color: Colors.blue,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 230,
                                  decoration: BoxDecoration(
                                    // color: Color.fromARGB(255, 1, 24, 44),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: ListView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Card(
                                        color: Color.fromARGB(255, 12, 53, 87),
                                        // Color.fromARGB(255, 12, 53, 87)

                                        child: CheckboxListTile(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            title: Text(
                                              "Invalid RC",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            subtitle: Text(
                                              " Under section PC30WD/20 Rs 4000",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                            value: checked,
                                            onChanged: (val) {
                                              setState(() {
                                                checked = val;
                                              });
                                            }),
                                      ),
                                      Card(
                                        color: Color.fromARGB(255, 12, 53, 87),
                                        child: CheckboxListTile(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            title: Text(
                                              "Driving without Insurance",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Under Section of 196/ Rs4000 ",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                            value: checked,
                                            onChanged: (val) {
                                              setState(() {
                                                checked = val;
                                              });
                                            }),
                                      ),
                                      Card(
                                        color: Color.fromARGB(255, 12, 53, 87),
                                        child: CheckboxListTile(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            title: Text(
                                              "Driving a transport vehicle without authorisation",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            subtitle: Text(
                                              "Under Section of 192A/5000",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                            value: checked,
                                            onChanged: (val) {
                                              setState(() {
                                                checked = val;
                                              });
                                            }),
                                      ),
                                      CheckboxListTile(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          title: Text(
                                            "Failure to stop the vehicle when demands",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 15,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "Under Section of 177/5000",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 11,
                                            ),
                                          ),
                                          value: checked,
                                          onChanged: (val) {
                                            setState(() {
                                              checked = val;
                                            });
                                          }),
                                      CheckboxListTile(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          title: Text(
                                            "Invalid RC",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "Rs 4000",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          value: checked,
                                          onChanged: (val) {
                                            setState(() {
                                              checked = val;
                                            });
                                          }),
                                      CheckboxListTile(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          title: Text(
                                            "Invalid RC",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "Rs 4000",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          value: checked,
                                          onChanged: (val) {
                                            setState(() {
                                              checked = val;
                                            });
                                          }),
                                      CheckboxListTile(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          title: Text(
                                            "Invalid RC",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "Rs 4000",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          value: checked,
                                          onChanged: (val) {
                                            setState(() {
                                              checked = val;
                                            });
                                          }),
                                      CheckboxListTile(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          title: Text(
                                            "Invalid RC",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "Rs 4000",
                                            style: TextStyle(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          value: checked,
                                          onChanged: (val) {
                                            setState(() {
                                              checked = val;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Checkbox(
                                        value: checked,
                                        onChanged: (val) {
                                          setState(() {
                                            checked = val;
                                          });
                                        }),
                                    Container(
                                      child: SizedBox(
                                        width: 100,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 58, 35, 184),
                                          ),
                                          onPressed: () {},
                                          child: Text("SUBMIT",
                                              style: TextStyle(
                                                color: Colors.black,
                                              )),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: SizedBox(
                                        width: 100,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Color.fromARGB(255, 13, 16, 18),
                                          ),
                                          onPressed: () {},
                                          child: Image.asset(
                                            "assets/location.gif",
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 36, 55),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
