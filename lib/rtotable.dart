import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class rto extends StatefulWidget {
  @override
  State<rto> createState() => _rtoState();
}

class _rtoState extends State<rto> {
  thri() async {
    const url =
        "https://www.google.com/maps/dir/9.9811328,76.3232256/FXQ2%2B8QP+RTO+Trivandrum,+Overbridge,+Pavithra+Nagar,+Santhi+Nagar,+Thampanoor,+Thiruvananthapuram,+Kerala+695014/@9.2305297,76.0691944,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3b05bb2d7fb35177:0x14e6acc5b47eb4b!2m2!1d76.9519534!2d8.4883667";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

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
          body: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Regional Transport office",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "THIRUVANANTHAPURAM KL-01",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      thri();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "KOLLAM KL-02",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      kollam();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Joseph",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "PATHANAMTHITTA KL-03",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      pathan();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Kiran kumar",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "ALAPPUZHA KL-04",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      ala();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Arun kumar",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "KOTTAYAM KL-05",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      kottayam();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Ajith",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "IDUKKI KL-06",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      idukki();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              " Nancy Thankachan",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "ERNAKULAM KL-07",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      thri();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Kishore",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "THRISSUR KL-08",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      thrissur();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Siva prasad",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "PALAKKAD KL-09",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      palakkad();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Anujith",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "MALAPPURAM KL-10",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      malappuram();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Emmanuel",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "KOZHIKODE KL-11",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      kozhikode();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Joseph ",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "WAYANAD KL-12",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      wayanad();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Lalu Alex",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "KANNUR KL-13",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      kannur();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Roy Mathew",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Card(
                      color: Color.fromARGB(255, 13, 16, 18),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "KASARGOD KL-14",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 0.8,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 13, 16, 18),
                                    ),
                                    onPressed: () async {
                                      kasargod();
                                    },
                                    child: Image.asset(
                                      "assets/location-pin.png",
                                      height: 25,
                                      width: 25,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.black,
                              child: Column(
                                children: [
                                  Table(
                                    border: TableBorder.all(
                                        width: 0.5,
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(5)),
                                    children: const [
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "DESIGINATION",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
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
                                                color: Colors.blue,
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
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "Karthik",
                                              style: TextStyle(
                                                color: Colors.blue,
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
                                              "MOBILE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "8547639004",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "ADDRESS",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                            child: Text(
                                              "5th Floor, KSRTC Terminal, Thampanoor,TVM, 695023",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13,
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
                                              "LANLINE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(13),
                                          child: Center(
                                            child: Text(
                                              "0477-2253160",
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  kollam() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/kollam+rto+office+location/@9.4698079,75.8840341,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3b05fc49a8a9ffef:0x2729cfc3721e0c00!2m2!1d76.5744994!2d8.8923356";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  pathan() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/pathanamthitta+rto+office+location/@9.6556681,76.2761185,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3b0615077f226af5:0xed27269e97947ca0!2m2!1d76.7801827!2d9.2612784";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  ala() async {
    const url =
        "https://www.google.com/maps/dir/10.0204544,76.3363328/alapuzha+rto+office+location/@9.752424,76.0269155,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3b0884f9c4ca1b3f:0x80a51245d5b6299f!2m2!1d76.3284896!2d9.4927314";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  kottayam() async {
    const url =
        "https://www.google.com/maps/dir//kottayam+rto+office+location/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3b062b9d981559e3:0x18dae0bcfd880e28?sa=X&ved=2ahUKEwjHiMzmnaT-AhXAT2wGHR-5CbMQ9Rd6BAhlEAQ";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  idukki() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/idukki+rto+office+location/@9.9533618,76.3464522,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3b07bb4364d0fd29:0x45c8075e23d3da9a!2m2!1d76.942123!2d9.8473593";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  ernakulam() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/Regional+Transport+Office+Ernakulam,+2nd+FLoor+Civil+Station+Kakkanad,+Vazhakkala,+Kochi,+Kerala+682030/@10.0355241,76.3100836,14z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3b080c8a559ceff1:0xf79c83822d55ec06!2m2!1d76.3435214!2d10.0169969";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  thrissur() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/thrissur+rto+office+location/@10.2837028,76.1479717,11z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba7ee7affffffff:0x86d7999af24062f5!2m2!1d76.1893395!2d10.521977";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  palakkad() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/palakkad+rto+office+location/@10.4056582,76.1545227,10z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba86dec771bf897:0x29a2f195abb8f451!2m2!1d76.6583514!2d10.7610121";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  malappuram() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/23RH%2B957+Regional+Transport+Office,+Civil+Station+Rd,+Up+Hill,+Malappuram,+Kerala+676505/@10.5357137,75.5969713,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba64a98908c1121:0x77f7996f91555325!2m2!1d76.0779354!2d11.0409188";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  kozhikode() async {
    const url =
        "https://www.google.com/maps/dir//kozhikode+rto+office+location/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3ba65ebbcb9b8a19:0x1e3ebc3054d0a82?sa=X&ved=2ahUKEwj4u8X0oKT-AhVASmwGHWH0CxgQ9Rd6BAhqEAQ";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  wayanad() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/kannur++rto+office+location/@10.9213101,75.3139997,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba43d316068dd6f:0xc1ca2be185ecf8fa!2m2!1d75.3719267!2d11.8747418";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  kannur() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/kannur++rto+office+location/@10.9213101,75.3139997,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba43d316068dd6f:0xc1ca2be185ecf8fa!2m2!1d75.3719267!2d11.8747418";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  kasargod() async {
    const url =
        "https://www.google.com/maps/dir/10.043392,76.3133952/kannur++rto+office+location/@10.9213101,75.3139997,9z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3ba43d316068dd6f:0xc1ca2be185ecf8fa!2m2!1d75.3719267!2d11.8747418";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }
}
