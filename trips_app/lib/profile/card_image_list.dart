import 'package:flutter/material.dart';
import 'cart_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      margin: const EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
      child: ListView(
        children: [
          CardImage(
            "assets/img/beach.jpg",
            "Knuckles Mountains Range",
            "Hiking, Water fall hunting, Natural bath, Scenery & Photography",
            "2,000,000",
          ),
          CardImage(
            "assets/img/city.jpg",
            "Knuckles Mountains Range",
            "Hiking, Water fall hunting, Natural bath, Scenery & Photography",
            "2,000,000",
          ),
          CardImage(
            "assets/img/ground.jpg",
            "Knuckles Mountains Range",
            "Hiking, Water fall hunting, Natural bath, Scenery & Photography",
            "2,000,000",
          ),
          CardImage(
            "assets/img/rocks.jpg",
            "Knuckles Mountains Range",
            "Hiking, Water fall hunting, Natural bath, Scenery & Photography",
            "2,000,000",
          ),
        ],
      ),
    );
  }
}
