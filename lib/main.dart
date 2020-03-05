import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/landing_page.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

void main() {
  runApp(MyApp());
}

ThemeData myAppTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.yellow[800],
    //accentColor: Colors.yellow[700],
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: myAppTheme(),
      // theme: ThemeData(
      //   primarySwatch: Colors.indigo,
      // ),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}