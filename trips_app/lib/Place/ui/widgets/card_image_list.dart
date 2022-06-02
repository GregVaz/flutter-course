import 'package:flutter/material.dart';
import 'cart_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/beach.jpg"),
          CardImage("assets/img/city.jpg"),
          CardImage("assets/img/ground.jpg"),
          CardImage("assets/img/rocks.jpg"),
        ],
      ),
    );
  }
}
