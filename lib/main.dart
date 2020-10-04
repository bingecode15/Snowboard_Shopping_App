import 'package:flutter/material.dart';
import 'package:snowboard_app/LandingScreen/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snowboard App",
      home: LandingScreen(),
    );
  }
}
