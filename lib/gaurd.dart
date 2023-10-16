import 'package:flutter/material.dart';
import 'package:flutter_application_1/userhistory.dart';

class persons extends StatefulWidget {
  @override
  State<persons> createState() => _personsState();
}

class _personsState extends State<persons> {
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 13, 16, 18)),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Card(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.black,
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  child: Image.asset("assets/policeman.png"),
                  height: 60,
                  width: 60,
                ),
                Text(
                  "SEARCH USER DETAILS",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    letterSpacing: 1,
                    wordSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 0.6,
                        color: Color.fromARGB(255, 3, 137, 239),
                      ),
                    ),
                    height: 200,
                    width: 390,
                    child: Card(
                      color: Colors.black,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 40,
                            width: 300,
                            child: TextField(
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                              controller: emailcontroller,
                              decoration: InputDecoration(
                                hintText: "Enter email",
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
                            height: 25,
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 58, 35, 184),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      history(name: emailcontroller.text),
                                ));
                              },
                              child: Text(
                                "SUBMIT",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
