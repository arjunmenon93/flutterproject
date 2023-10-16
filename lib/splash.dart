import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstscreen.dart';

class screensplash extends StatefulWidget {
  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {
  @override
  void initState() {
    gotohome();
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Image.asset("assets/MVA.gif"),
          ),
        ),
      ),
    );
  }

  Future<void> gotohome() async {
    await Future.delayed(Duration(seconds: 6));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => screenone()));
  }
}
