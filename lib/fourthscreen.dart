import 'package:flutter/material.dart';

class screenfour extends StatelessWidget {
  @override
  String name, password;
  screenfour({required this.name, required this.password});

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Text(name),
            ),
            Container(
              child: Text(password),
            )
          ],
        ),
      ),
    );
  }
}
