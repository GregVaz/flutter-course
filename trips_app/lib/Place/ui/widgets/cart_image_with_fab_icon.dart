import 'package:flutter/material.dart';
import 'package:trips_app/widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {
  String pathImage = ' ';
  double height;
  double width;
  double left;
  VoidCallback onPressedFabIcon;
  IconData iconData;

  CardImageWithFabIcon({
    required this.pathImage,
    this.height = 350.0,
    this.width = 250.0,
    this.left = 20.0,
    required this.onPressedFabIcon,
    required this.iconData
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: 80.0,
        left: left,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.7),
            ),
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [card, FloatingActionButtonGreen(
        iconData: iconData,
        onPressed: () {},
      )],
    );
  }
}
