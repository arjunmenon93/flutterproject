import 'dart:ui';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstscreen.dart';
import 'package:flutter_application_1/login.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class reg extends StatefulWidget {
  @override
  State<reg> createState() => _reg();
}

class _reg extends State<reg> {
  @override
  final emailcontroller = TextEditingController();
  final confirmcontroller = TextEditingController();

  final passcontroller = TextEditingController();
  final namecontroller = TextEditingController();

  final idcontroller = TextEditingController();
  bool validateusername = false;
  bool validateemail = false;
  bool validateid = false;
  bool validatepass = false;
  bool validateconfirm = false;
  String imageurl = '';
  List<String> guard = [];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 12, 36, 55),
          child: Center(
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              shadowColor: Colors.black,
              color: Color.fromARGB(255, 12, 36, 55),
              child: SizedBox(
                width: 450,
                height: 870,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: namecontroller,
                            decoration: InputDecoration(
                              errorText: validateusername
                                  ? "Invalid name name must be in alphabets"
                                  : null,
                              hintText: "Username",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.8,
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: idcontroller,
                            decoration: InputDecoration(
                              errorText: validateid ? "Invalid id" : null,
                              hintText: "User ID",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.8,
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              errorText: validateemail ? "Invalid email" : null,
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.8,
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: passcontroller,
                            decoration: InputDecoration(
                              errorText:
                                  validatepass ? "Invalid password" : null,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.8,
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 50,
                          width: 340,
                          child: TextField(
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            controller: confirmcontroller,
                            decoration: InputDecoration(
                              errorText: validateconfirm
                                  ? "password does not match"
                                  : null,
                              hintText: " Confirm Password",
                              hintStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.blue,
                                  fontSize: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 0.8,
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () async {
                              RegExp regex = RegExp(r'^[a-z A-z]+$');
                              RegExp email =
                                  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');
                              RegExp id = RegExp(r'^[a-z A-z 0-9]+$');
                              RegExp pass = RegExp(r'^[a-z A-z 0-9]+$');
                              RegExp confirm = RegExp(r'^[a-z A-z 0-9]+$');

                              await don();

                              go();
                            },
                            child: Text("Sign up"),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  name() async {
    RegExp regex = RegExp(r'^[a-z A-z]+$');

    if (namecontroller.text.isEmpty) {
      validateusername = true;
    }
    if (!regex.hasMatch(namecontroller.text)) {
      validateusername = true;
    } else {
      validateusername = false;
    }
  }

  emaill() async {
    RegExp email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');

    if (emailcontroller.text.isEmpty) {
      validateemail = true;
    }
    if (!email.hasMatch(emailcontroller.text)) {
      validateemail = true;
    } else {
      validateemail = false;
    }
  }

  idd() async {
    RegExp id = RegExp(r'^[a-z A-z 0-9]+$');

    if (idcontroller.text.isEmpty) {
      validateid = true;
    }

    if (!id.hasMatch(idcontroller.text)) {
      validateid = true;
    } else {
      validateid = false;
    }
  }

  password() async {
    RegExp pass = RegExp(r'^[a-z A-z 0-9]+$');

    if (passcontroller.text.isEmpty) {
      validatepass = true;
    }
    if (!pass.hasMatch(passcontroller.text)) {
      validatepass = true;
    } else {
      validatepass = false;
    }
  }

  confirmpassword() async {
    RegExp confirm = RegExp(r'^[a-z A-z 0-9]+$');

    if (confirmcontroller.text.isEmpty ||
        confirmcontroller.text != passcontroller.text) {
      validatepass = true;
    }

    if (!confirm.hasMatch(confirmcontroller.text)) {
      validateconfirm = true;
    } else {
      validateconfirm = false;
    }
  }

  don() async {
    setState(() {
      name();
      emaill();
      idd();
      password();
      confirmpassword();
    });
  }

  go() async {
    if (validateusername == false &&
        validateemail == false &&
        validateid == false &&
        validatepass == false &&
        validateconfirm == false) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passcontroller.text);
      await pic();

      await FirebaseFirestore.instance.collection('user').add({
        'name': namecontroller.text,
        'email': emailcontroller.text,
        'password': passcontroller.text,
        'confirmpassword': confirmcontroller.text,
        'id': idcontroller.text,
        'img': imageurl
      });
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => screenone()),
      );
    } else {
      print("sorry");
    }
  }

  pic() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? filee = await imagePicker.pickImage(source: ImageSource.camera);
    print('${filee?.path}');
    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    if (filee == null) return;
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(filee.path));
      imageurl = await referenceImageToUpload.getDownloadURL();
    } catch (error) {}
  }

  idcheck() async {
    bool validateconfirm = false;

    await FirebaseFirestore.instance
        .collection('officers')
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference.id);
              guard.add(document.reference.id);
              if (document.reference.id != idcontroller.text) {
                validateid = true;
              }
            }));
  }
}
