import 'package:flutter/material.dart';
import 'package:snowboard_app/CategoryScreen/category_screen.dart';

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
      children: [
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.075),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "POWDER SNOWBOARD",
                      style: kAppBarTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kLightTextColor,
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    Text(
                      "Burton Tree\nResonator",
                      style: kHeadingStyle,
                    ),
                    SizedBox(height: size.height * 0.015),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "USD ",
                            style: kContentStyle.copyWith(
                              color: kLightTextColor,
                            ),
                          ),
                          TextSpan(
                            text: "1,325",
                            style: kContentStyle.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.045),
                      child: Text(
                        "SIZE",
                        style: kInfoStyle.copyWith(
                          color: kLightTextColor,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Container(
                      height: size.height * 0.09,
                      width: size.width * 0.18,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "159W",
                          style: kValueTextStyle,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.045),
                      child: Text(
                        "PRINT",
                        style: kInfoStyle.copyWith(
                          color: kLightTextColor,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Image.asset("assets/images/image4.png"),
                    SizedBox(height: size.height * 0.015),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.025),
                      child: Text(
                        "RATING",
                        style: kInfoStyle.copyWith(
                          color: kLightTextColor,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Container(
                      height: size.height * 0.09,
                      width: size.width * 0.18,
                      decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "4.8",
                          style: kValueTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Image.asset("assets/images/image2.png"),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.025),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.01,
              width: size.width * 0.045,
              decoration: BoxDecoration(
                color: kTextColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(70.0),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.02),
            Container(
              height: size.height * 0.01,
              width: size.width * 0.02,
              decoration: BoxDecoration(
                color: kLightTextColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(70.0),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.02),
            Container(
              height: size.height * 0.01,
              width: size.width * 0.02,
              decoration: BoxDecoration(
                color: kLightTextColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(70.0),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.06),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 27.0,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: size.height * 0.085,
              width: size.width * 0.5,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen(),
                    ),
                  );
                },
                color: kTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100.0),
                  ),
                ),
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
