import 'dart:io';
import 'package:flutter/material.dart';
import 'package:trips_app/widgets/floating_action_button_green.dart';

class CardImageWithFabIcon extends StatelessWidget {
  String pathImage = '';
  double height;
  double width;
  double left;
  VoidCallback onPressedFabIcon;
  IconData iconData;
  bool resourceFromCamera;

  CardImageWithFabIcon({
    required this.pathImage,
    this.height = 350.0,
    this.width = 250.0,
    this.left = 20.0,
    required this.onPressedFabIcon,
    required this.iconData,
    this.resourceFromCamera = false
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
            image: resourceFromCamera ?
              FileImage(File(pathImage)) :
              NetworkImage(pathImage) as ImageProvider
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
      children: [
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: () {},
        ),
      ],
    );
  }
}
