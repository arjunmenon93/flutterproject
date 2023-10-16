import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/exam.dart';
import 'package:flutter_application_1/example.dart';
import 'package:flutter_application_1/licenceview.dart';
import 'package:flutter_application_1/one.dart';
import 'package:flutter_application_1/you.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

import 'finedisplay.dart';

class Son extends StatefulWidget {
  @override
  State<Son> createState() => _SonState();
}

class _SonState extends State<Son> {
  final regcontroller = TextEditingController();
  final citizencontroller = TextEditingController();
  final unioun = DateFormat.yMMMMEEEEd().format(DateTime.now());

  final phonecontroller = TextEditingController();
  bool? checked = false;
  bool value = false;
  String val = "unpaid";
  Map<String, bool> values = {
    ' Driving without licence/Section PC30WD/Rs 2000': false,
    'Driving with out insurance/Section PC40WC/Rs 5000': false,
    ' Driving a transport vehicle without authorisation/Section PC50WS/Rs 4000':
        false,
    ' Using the vehicle in unsafe condition/Section PD78YC/Rs 3000': false,
    'Failure to stop the vehicle when demands/Section PC85/Rs 8000': false,
    ' Driving without PUCC/Section PD85/Rs 7000': false,
    'Invalid RC/Section PD85/Rs 7000': false,
    'Driving with out valid TAX permit/Section PG45/Rs 8000': false,
    ' Overloading the vehicle with passengers or goods/Section PH/Rs 9000':
        false,
    ' Registration plate not being in the prescribed size': false,
  };
  Map<String, bool> licence = {
    ' Driving without Helmet/Section PC50WS/Rs 4000': false,
    ' Driving/Riding while on the Mobile/Section PD78YC/Rs 3000': false,
    'Drunk and Drive/Section PC85/Rs 8000': false,
    ' Driving a transport vehicle without authorisation/Section PD85/Rs 7000':
        false,
    'Driving a vehicle without valid RC/Section PD85/Rs 7000': false,
    'violating the Roadsaftey Rules/Section PG45/Rs 8000': false,
    ' Using the vehicle in Unsafe condition/Section PH/Rs 9000': false,
    'Rash Driving/Section PD85/Rs 7000': false,
    'Failure to stop the vehicle whendemand/Section PG45/Rs 8000': false,
    ' Driving without seat belt/Section PH/Rs 9000': false,
    'Failure to submit the driving badge/Section PG45/Rs 8000': false,
    ' Failure to wear the prescribed uniform/Section PH/Rs 9000': false,
  };
  var tmpArray = [];
  var flagArray = [];
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

  getItems() async {
    licence.forEach((key, value) async {
      if (value == true) {
        flagArray.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(flagArray);
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
  List<String> driving = [];
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

  open() async {
    final date = DateFormat.yMMMEd().add_jm().format(DateTime.now());
    final make = citizencontroller.text;
    var whatsapp = phonecontroller.text;
    var android = "whatsapp://send?phone=" +
        whatsapp +
        "&text=Hi this is from MVA.It has been found that the Driving Licence number $make was fined for violations of the traffics laws,such as $flagArray on$date at $Address.For more information please contact nearest RTO office .Thank you";
    if (await canLaunch(android)) {
      await launch(android);
    }
  }

  Future getDocId() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await GetAddressFromLatLong(position);
    await getCheckboxItems();
    final person = FirebaseAuth.instance.currentUser;

    await FirebaseFirestore.instance
        .collection("vehicledetails")
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference.id);
              docIds.add(document.reference.id);
              if (document.reference.id == regcontroller.text) {
                print(document.reference.id);
                FirebaseFirestore.instance.collection('vehiclefine').add({
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

  Future getlicenceId() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    await GetAddressFromLatLong(position);
    await getItems();
    final person = FirebaseAuth.instance.currentUser;

    await FirebaseFirestore.instance
        .collection("citizendetails")
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference.id);
              docIds.add(document.reference.id);
              if (document.reference.id == citizencontroller.text) {
                print(document.reference.id);
                FirebaseFirestore.instance.collection('citizenfine').add({
                  'licenceno': citizencontroller.text,
                  'datetime':
                      DateFormat.yMMMEd().add_jm().format(DateTime.now()),
                  'location': Address,
                  'fine': flagArray,
                  'status': val,
                  'officer': person!.email!,
                  'dt': unioun,
                });
                open();
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.blue,
                      title: Text("Error"),
                      content: Text(
                        "Invalid Licence Number",
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.fire_truck,
                  color: Colors.blue,
                )),
                Tab(
                    icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                )),
              ],
            ),
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
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            width: double.infinity,
                            height: 800,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child:
                                          Image.asset("assets/bluetruck.png"),
                                    ),
                                    Text(
                                      "VEHICLE FINE",
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
                                                  padding:
                                                      EdgeInsets.only(left: 70),
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    height: 45,
                                                    width: 260,
                                                    child: TextField(
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 14,
                                                      ),
                                                      controller: regcontroller,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            "Enter the Reg No",
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
                                                                  .circular(10),
                                                        ),
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
                                                  padding:
                                                      EdgeInsets.only(left: 70),
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
                                                      controller:
                                                          phonecontroller,
                                                      decoration:
                                                          InputDecoration(
                                                        counterStyle: TextStyle(
                                                            color: Colors.blue),
                                                        hintText:
                                                            "Enter Phone No",
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
                                              height: 300,
                                              decoration: BoxDecoration(
                                                // color: Color.fromARGB(255, 1, 24, 44),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: ListView(
                                                scrollDirection: Axis.vertical,
                                                children: values.keys
                                                    .map((String key) {
                                                  // ignore: unnecessary_new
                                                  return Card(
                                                    color: Color.fromARGB(
                                                        255, 12, 53, 87),
                                                    child: new CheckboxListTile(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
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
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                58, 35, 184),
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
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            width: double.infinity,
                            height: 800,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child:
                                          Image.asset("assets/bluelicence.png"),
                                    ),
                                    Text(
                                      "CITIZEN  FINE",
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
                                                  padding:
                                                      EdgeInsets.only(left: 70),
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    height: 45,
                                                    width: 260,
                                                    child: TextField(
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 14,
                                                      ),
                                                      controller:
                                                          citizencontroller,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            "Enter the Licence No",
                                                        hintStyle: TextStyle(
                                                            letterSpacing: 1,
                                                            color: Colors.blue,
                                                            fontSize: 10),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  width: 0.8,
                                                                  color: Colors
                                                                      .blue,
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
                                                  padding:
                                                      EdgeInsets.only(left: 70),
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
                                                      controller:
                                                          phonecontroller,
                                                      decoration:
                                                          InputDecoration(
                                                        counterStyle: TextStyle(
                                                            color: Colors.blue),
                                                        hintText:
                                                            "Enter Phone No",
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
                                              height: 300,
                                              decoration: BoxDecoration(
                                                // color: Color.fromARGB(255, 1, 24, 44),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: ListView(
                                                scrollDirection: Axis.vertical,
                                                children: licence.keys
                                                    .map((String key) {
                                                  // ignore: unnecessary_new
                                                  return Card(
                                                    color: Color.fromARGB(
                                                        255, 12, 53, 87),
                                                    child: new CheckboxListTile(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      title: new Text(
                                                        key,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                      value: licence[key],
                                                      activeColor: Colors.pink,
                                                      checkColor: Colors.white,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          licence[key] = value!;
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
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Color.fromARGB(255,
                                                                58, 35, 184),
                                                      ),
                                                      onPressed: () async {
                                                        await getlicenceId();
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
            ],
          ),
        )));
    // TODO: implement build
  }
}
