import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/example.dart';
import 'package:image_picker/image_picker.dart';

import 'firstscreen.dart';

class eg extends StatefulWidget {
  @override
  State<eg> createState() => _egState();
}

class _egState extends State<eg> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final idcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final confirmcontroller = TextEditingController();

  bool validateusername = false;
  bool validateemail = false;
  bool validateid = false;
  bool validatepass = false;
  bool validateconfirm = false;
  String imageurl = '';

  @override
  Widget build(BuildContext) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 340,
          child: TextFormField(
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            controller: namecontroller,
            decoration: InputDecoration(
              errorText: validateusername
                  ? "Invalid name name must be in alphabets"
                  : null,
              hintText: " name",
              hintStyle:
                  TextStyle(letterSpacing: 1, color: Colors.blue, fontSize: 10),
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
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 340,
          child: TextFormField(
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            controller: emailcontroller,
            decoration: InputDecoration(
              errorText: validateemail ? "Invalid email" : null,
              hintText: " email",
              hintStyle:
                  TextStyle(letterSpacing: 1, color: Colors.blue, fontSize: 10),
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
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 340,
          child: TextFormField(
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            controller: idcontroller,
            decoration: InputDecoration(
              errorText: validateid ? "Invalid id" : null,
              hintText: " id",
              hintStyle:
                  TextStyle(letterSpacing: 1, color: Colors.blue, fontSize: 10),
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
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 340,
          child: TextFormField(
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            controller: passcontroller,
            decoration: InputDecoration(
              errorText: validatepass ? "Invalid password" : null,
              hintText: " password",
              hintStyle:
                  TextStyle(letterSpacing: 1, color: Colors.blue, fontSize: 10),
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
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 340,
          child: TextFormField(
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            controller: confirmcontroller,
            decoration: InputDecoration(
              errorText: validateconfirm ? "password does not match" : null,
              hintText: " confirmpassword",
              hintStyle:
                  TextStyle(letterSpacing: 1, color: Colors.blue, fontSize: 10),
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
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () async {
              RegExp regex = RegExp(r'^[a-z A-z]+$');
              RegExp email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');
              RegExp id = RegExp(r'^[a-z A-z 0-9]+$');
              RegExp pass = RegExp(r'^[a-z A-z 0-9]+$');
              RegExp confirm = RegExp(r'^[a-z A-z 0-9]+$');

              await don();
              await pic();
              go();
            },
            child: Text("Sign up"),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () async {},
            child: Text("next"),
          ),
        ),
      ],
    )));
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

      await FirebaseFirestore.instance.collection('test').add({
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
}
