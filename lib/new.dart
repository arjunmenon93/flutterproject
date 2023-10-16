import 'package:flutter/material.dart';

class pic extends StatelessWidget {
  const pic({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: 150,
          height: 40,
          child: Image.asset("assets/search.gif"),
        ),
      ),
    );
  }
}
