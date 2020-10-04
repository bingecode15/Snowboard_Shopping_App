import 'package:flutter/material.dart';
import 'package:snowboard_app/CartScreen/cart_screen.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Padding(
            padding: EdgeInsets.only(left: size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.35),
                Text(
                  "Riders\ntalked, and\nwe listened.",
                  style: kHeadingStyle.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  ".\nGeometric",
                  style: kHeadingStyle,
                ),
                SizedBox(height: size.height * 0.15),
                Row(
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.black,
                      elevation: 0.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartScreen()),
                        );
                      },
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 50.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.05),
                      child: Text(
                        "View Collection",
                        style: kCollectionTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Image.asset("assets/images/image1.png"),
        ),
      ],
    );
  }
}
