import 'package:clubs_project/HomePage.dart';
import 'package:clubs_project/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClubActivitiesPlanner());
}

class ClubActivitiesPlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/Login': (context) => Login(),
      },
    );
  }
}
