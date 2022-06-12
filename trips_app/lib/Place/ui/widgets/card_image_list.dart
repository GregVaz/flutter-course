import 'package:flutter/material.dart';
import 'cart_image_with_fab_icon.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImageWithFabIcon(
            pathImage: "assets/img/beach.jpg",
            onPressedFabIcon: () {},
            iconData: Icons.favorite,
          ),
          CardImageWithFabIcon(
              pathImage: "assets/img/city.jpg",
            onPressedFabIcon: () {},
            iconData: Icons.favorite,
          ),
          CardImageWithFabIcon(
              pathImage: "assets/img/ground.jpg",
            onPressedFabIcon: () {},
            iconData: Icons.favorite,
          ),
          CardImageWithFabIcon(
              pathImage: "assets/img/rocks.jpg",
            onPressedFabIcon: () {},
            iconData: Icons.favorite,
          ),
        ],
      ),
    );
  }
}
