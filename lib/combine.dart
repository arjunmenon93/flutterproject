import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';

class alt extends StatefulWidget {
  @override
  State<alt> createState() => _altState();
}

class _altState extends State<alt> {
  final regcontroller = TextEditingController();
  bool? checked = false;
  bool value = false;
  Map<String, bool> values = {
    'Invalid RC/Section PC30WD/20 Rs 4000': false,
    'Banana': false,
    'Cherry': false,
    'Mango': false,
    'Orange': false,
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
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 700,
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
                                "ALTERATION  FINE",
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
                                          controller: regcontroller,
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
                                      SizedBox(
                                        height: 35,
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
                                                  Position position =
                                                      await _getGeoLocationPosition();
                                                  location =
                                                      'Lat: ${position.latitude} , Long: ${position.longitude}';
                                                  await GetAddressFromLatLong(
                                                      position);
                                                  await getCheckboxItems();

                                                  FirebaseFirestore.instance
                                                      .collection('final')
                                                      .add({
                                                    'regno': regcontroller.text,
                                                    'datetime':
                                                        DateFormat.yMMMEd()
                                                            .add_jm()
                                                            .format(
                                                                DateTime.now()),
                                                    'location': Address,
                                                    'fine': tmpArray,
                                                  });
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
