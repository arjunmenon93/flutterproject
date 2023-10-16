import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class hyper extends StatefulWidget {
  @override
  State<hyper> createState() => _hyperState();
}

class _hyperState extends State<hyper> {
  launchurl() async {
    const url =
        "https://www.google.com/maps/place/Paravur+RTO+Office/@10.1437617,76.2175504,17z/data=!3m1!4b1!4m6!3m5!1s0x3b0810818dcc6cb9:0xb71f4dd718f6fea1!8m2!3d10.1437617!4d76.2197391!16s%2Fg%2F1hc489srq";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "soryy";
    }
  }

  final linkcontroller = TextEditingController();
  open() async {
    var whatsapp = "9605051077";
    var android = "whatsapp://send?phone=" + whatsapp + "&text=heloo ";
    if (await canLaunch(android)) {
      await launch(android);
    }
  }

  @override
  Widget build(BuildContext) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: ElevatedButton(
                  onPressed: () async {
                    launchurl();
                  },
                  child: Text("click")),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () async {
                    const url = "https://www.xtrafondos.com/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw "soryy";
                    }
                  },
                  child: Text("click")),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () async {
                    open();
                  },
                  child: Text("message")),
            ),
            SizedBox(
              height: 45,
              width: 280,
              child: TextField(
                controller: linkcontroller,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      letterSpacing: 1, color: Colors.blue, fontSize: 10),
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
          ],
        ),
      ),
    );
  }
}
