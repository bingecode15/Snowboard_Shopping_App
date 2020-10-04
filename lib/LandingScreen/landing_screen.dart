import 'package:flutter/material.dart';
import 'package:snowboard_app/LandingScreen/components/body.dart';
import 'package:snowboard_app/LandingScreen/components/buildAppBar.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(size: size),
    );
  }
}
