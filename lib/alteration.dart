import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/date.dart';
import 'package:flutter_application_1/gaurd.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class fruit extends StatefulWidget {
  @override
  State<fruit> createState() => _fruitState();
}

class _fruitState extends State<fruit> {
  final regcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final unioun = DateFormat.yMMMMEEEEd().format(DateTime.now());
  bool? checked = false;
  bool value = false;
  String val = "unpaid";
  Map<String, bool> values = {
    ' Illegal Air horns/Section PC30WD/Rs 2000': false,
    'Loud Aftermarket Exhausts/Section PC40WC/Rs 5000': false,
    ' Dark Sun Film (Window Tinting)/Section PC50WS/Rs 4000': false,
    ' Illegal HID Lights/Section PD78YC/Rs 3000': false,
    'Engine Swap/Section PC85/Rs 8000': false,
    ' Bull Bars/Crash Guards/Section PD85/Rs 7000': false,
    'Extra Wide Tyres/Section PD85/Rs 7000': false,
    'Body Lifting Kits/Section PG45/Rs 8000': false,
    ' Illegal Swaping of vehicle colour/Section PH/Rs 9000': false,
  };

  var tmpArray = [];

  getCheckboxItems() async {
    values.forEach((key, value) async {
      if (value == true) {
        tmpArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(tmpArray);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
  }

  String location = 'Null, Press Button';
  String Address = 'search';

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

    setState(() {});
  }

  List<String> docIds = [];

  Future getDocId() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await GetAddressFromLatLong(position);
    await getCheckboxItems();

    await FirebaseFirestore.instance
        .collection("vehicledetails")
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference.id);
              docIds.add(document.reference.id);
              if (document.reference.id == regcontroller.text) {
                print(document.reference.id);
                FirebaseFirestore.instance.collection('modification').add({
                  'regno': regcontroller.text,
                  'datetime':
                      DateFormat.yMMMEd().add_jm().format(DateTime.now()),
                  'location': Address,
                  'fine': tmpArray,
                  'status': val,
                  'officer': person!.email!,
                  'dt': unioun,
                });
                openwhats();
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.blue,
                      title: Text("Error"),
                      content: Text(
                        "Invalid Registration Number",
                        style: TextStyle(),
                      ),
                      actions: [
                        TextButton(
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    );
                  },
                );
                print("sorryy");
              }
            }));
  }

  openwhats() async {
    final date = DateFormat.yMMMEd().add_jm().format(DateTime.now());
    final make = regcontroller.text;
    var whatsapp = phonecontroller.text;
    var android = "whatsapp://send?phone=" +
        whatsapp +
        "&text=Hi this is from MVA.It has been found that the vehicle you owned $make was fined for violations of the traffics laws,such as $tmpArray on$date at $Address.For more information please contact nearest RTO office .Thank you";
    if (await canLaunch(android)) {
      await launch(android);
    }
  }

  gone() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await GetAddressFromLatLong(position);
    await getCheckboxItems();
    if (docIds == regcontroller.text) {
      await FirebaseFirestore.instance.collection('final').add({
        'regno': regcontroller.text,
        'datetime': DateFormat.yMMMEd().add_jm().format(DateTime.now()),
        'location': Address,
        'fine': tmpArray,
      });
    } else {
      print(docIds.toString());
    }
  }

  hai() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await GetAddressFromLatLong(position);
    await getCheckboxItems();
    await FirebaseFirestore.instance
        .collection('veh')
        .where('regno', isEqualTo: regcontroller.text)
        .snapshots();

    await FirebaseFirestore.instance.collection('final').add({
      'regno': regcontroller.text,
      'datetime': DateFormat.yMMMEd().add_jm().format(DateTime.now()),
      'location': Address,
      'fine': tmpArray,
    });
  }

  hope() async {
    StreamBuilder(
      stream: await FirebaseFirestore.instance
          .collection('veh')
          .where('regno', isEqualTo: regcontroller.text)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return hai();
        }
        return Text("sorryy");
      },
    );
  }

  you() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await GetAddressFromLatLong(position);
    await getCheckboxItems();
    final QuerySnapshot result = await FirebaseFirestore.instance
        .collection('veh')
        .where('regno', isEqualTo: regcontroller.text)
        .get();
    final List<DocumentSnapshot> documents = result.docs;
    if (documents == regcontroller.text) {
      FirebaseFirestore.instance.collection('final').add({
        'regno': regcontroller.text,
        'datetime': DateFormat.yMMMEd().add_jm().format(DateTime.now()),
        'location': Address,
        'fine': tmpArray,
      });
    } else {
      print("mistake");
    }
  }

  final person = FirebaseAuth.instance.currentUser;

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
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 830,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Image.asset("assets/maintenance.png"),
                              ),
                              Text(
                                "ALTERATION  FINE",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                  wordSpacing: 2,
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 70),
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              height: 45,
                                              width: 260,
                                              child: TextField(
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 14,
                                                ),
                                                controller: regcontroller,
                                                decoration: InputDecoration(
                                                  hintText: "Enter the Reg No",
                                                  hintStyle: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Colors.blue,
                                                      fontSize: 10),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            width: 0.8,
                                                            color: Colors.blue,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 70),
                                            child: SizedBox(
                                              height: 45,
                                              width: 260,
                                              child: TextField(
                                                maxLength: 10,
                                                keyboardType:
                                                    TextInputType.number,
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 14,
                                                ),
                                                controller: phonecontroller,
                                                decoration: InputDecoration(
                                                  counterStyle: TextStyle(
                                                      color: Colors.blue),
                                                  hintText: "Enter Phone No",
                                                  hintStyle: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Colors.blue,
                                                      fontSize: 10),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors
                                                            .blue), //<-- SEE HERE
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 330,
                                        decoration: BoxDecoration(
                                          // color: Color.fromARGB(255, 1, 24, 44),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children:
                                              values.keys.map((String key) {
                                            // ignore: unnecessary_new
                                            return Card(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 87),
                                              child: new CheckboxListTile(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                title: new Text(
                                                  key,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                value: values[key],
                                                activeColor: Colors.pink,
                                                checkColor: Colors.white,
                                                onChanged: (value) {
                                                  setState(() {
                                                    values[key] = value!;
                                                  });
                                                },
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Un Paid",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Checkbox(
                                            value: checked,
                                            onChanged: (val) {
                                              setState(() {
                                                checked = val;
                                              });
                                            },
                                          ),
                                          Container(
                                            child: SizedBox(
                                              width: 100,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 58, 35, 184),
                                                ),
                                                onPressed: () async {
                                                  await getDocId();
                                                },
                                                child: Text("SUBMIT",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    )),
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
          ),
        ),
      ),
    );
  }
}
