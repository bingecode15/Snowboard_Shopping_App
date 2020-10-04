import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snowboard_app/CategoryScreen/components/category_list.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03, horizontal: size.width * 0.05),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "Full Color life\nonly on",
                  style: kHeadingStyle.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: "\nthe slope.",
                  style: kHeadingStyle,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 275.0,
          child: CategoryList(),
        ),
        SizedBox(height: size.height * 0.02),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: Text(
            "Most Popular",
            style: kCollectionTextStyle,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.05),
          child: Row(
            children: [
              Image.asset("assets/images/image3.png"),
              SizedBox(width: size.width * 0.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Long Winter 23",
                    style: kCollectionTextStyle,
                  ),
                  Text(
                    "All mountain",
                    style: kInfoStyle.copyWith(
                      color: kLightTextColor,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/star.svg"),
                      SizedBox(width: size.width * 0.015),
                      Text(
                        "4.9",
                        style: kValueTextStyle.copyWith(
                          fontSize: 14.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
