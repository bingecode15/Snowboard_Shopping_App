import 'package:flutter/material.dart';

import '../../constants.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    Key key,
  }) : super(key: key);

  List category = [
    {
      "title": "All mountain",
      "subtitle": "24 models",
      "image": "assets/images/list_image1.png",
    },
    {
      "title": "Park",
      "subtitle": "17 models",
      "image": "assets/images/list_image2.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: category.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Image.asset(category[index]["image"]),
            ),
            Text(
              category[index]["title"],
              style: kCollectionTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              category[index]["subtitle"],
              style: kModelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
