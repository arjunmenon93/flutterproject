import 'package:flutter/material.dart';
import 'package:flutter_application_1/backup.dart';
import 'package:flutter_application_1/check.dart';
import 'package:flutter_application_1/displayfine.dart';
import 'package:flutter_application_1/fine.dart';
import 'package:flutter_application_1/gaurd.dart';
import 'package:flutter_application_1/login.dart';

import 'package:flutter_application_1/new.dart';
import 'package:flutter_application_1/officer.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/rtotable.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/secondscreen.dart';
import 'package:flutter_application_1/firstscreen.dart';
import 'package:flutter_application_1/splash.dart';
import 'package:flutter_application_1/tab.dart';
import 'package:flutter_application_1/table.dart';
import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/thirdscreen.dart';
import 'package:flutter_application_1/zero.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "rough",
      home: test(),
      routes: {
        'screen1': (context) {
          return screenone();
        },
        'screen2': (context) {
          return screentwo();
        }
      },
    );
  }
}
