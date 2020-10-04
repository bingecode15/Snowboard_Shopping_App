import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar(Size size) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    leading: Padding(
      padding: EdgeInsets.all(15.0),
      child: SvgPicture.asset("assets/icons/menu.svg"),
    ),
    actions: [
      SvgPicture.asset("assets/icons/heart.svg"),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          child: Text(
            "16",
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
