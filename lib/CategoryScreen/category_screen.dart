import 'package:flutter/material.dart';
import 'package:snowboard_app/CategoryScreen/components/body.dart';
import 'package:snowboard_app/CategoryScreen/components/buildAppBar.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(size),
      body: Body(size: size),
    );
  }
}
