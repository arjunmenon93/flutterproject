import 'package:flutter/material.dart';

class screentwo extends StatefulWidget {
  @override
  State<screentwo> createState() => _screentwo();
}

class _screentwo extends State<screentwo> {
  final textcontroller = TextEditingController();

  String displaytext = "hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: textcontroller,
            decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink, width: 3))),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                displaytext = textcontroller.text;
              });
            },
            child: const Text("click here"),
          ),
          Text(displaytext),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("go back"),
          )
        ],
      ),
    );
  }
}
