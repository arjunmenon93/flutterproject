import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourthscreen.dart';

class screenthree extends StatefulWidget {
  @override
  State<screenthree> createState() => _screenthreeState();
}

class _screenthreeState extends State<screenthree> {
  final textcontroller = TextEditingController();
  final textcontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: textcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: textcontroller2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                check(context);
              },
              child: Text("click"),
            )
          ],
        ),
      ),
    );
  }

  check(BuildContext context) {
    if (textcontroller.text == textcontroller2.text) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => screenfour(
              name: textcontroller.text, password: textcontroller2.text)));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("sorry the username or password is missmached"),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
        ),
      );
    }
  }
}
