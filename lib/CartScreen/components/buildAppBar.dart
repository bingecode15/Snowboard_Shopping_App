import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snowboard_app/LandingScreen/landing_screen.dart';

AppBar buildAppBar(BuildContext context, Size size) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(
        Icons.keyboard_arrow_left,
        size: 35.0,
      ),
      color: Colors.black,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LandingScreen(),
          ),
        );
      },
    ),
    actions: [
      SvgPicture.asset("assets/icons/heart.svg"),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Text(
            "17",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      SvgPicture.asset("assets/icons/bag.svg"),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Text(
            "3",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}
