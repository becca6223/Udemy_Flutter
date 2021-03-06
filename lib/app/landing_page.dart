import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/app_sign_in/sign_in_page.dart';
import 'package:time_tracker_flutter_course/app/home_page.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class LandingPage extends StatelessWidget {
  LandingPage({@required this.auth});
  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    print("build landing page");
    return StreamBuilder<User>(
      stream: auth.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          //snapshot.connectionstate, snapshot.error, snapshot.haserror
          User user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: auth
            );
          } else {
            return HomePage(
              auth: auth
            );
          }
        } else {
          return Scaffold(
            body: Center(child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
