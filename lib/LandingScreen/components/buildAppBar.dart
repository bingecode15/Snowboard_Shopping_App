import 'package:flutter/material.dart';

import '../../constants.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: false,
    title: Text(
      "SNOWBOARDS",
      style: kAppBarTextStyle,
    ),
  );
}
