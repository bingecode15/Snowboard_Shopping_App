import 'package:flutter/material.dart';
import 'package:snowboard_app/CartScreen/components/body.dart';
import 'package:snowboard_app/CartScreen/components/buildAppBar.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, size),
      body: Body(size: size),
    );
  }
}
