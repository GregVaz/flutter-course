import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage = 'assets/img/beach.jpg';
  String title = 'Knuckles Mountains Range';
  String description =
      'Hiking, Water fall hunting, Natural bath, Scenery & Photography';
  String steps = '2,000,000';

  CardImage(this.pathImage, this.title, this.description, this.steps);

  @override
  Widget build(BuildContext context) {
    final cardTitle = Text(
      title,
      style: TextStyle(
        color: Colors.black87,
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      ),
    );

    final cardActivities = Text(
      description,
      style: TextStyle(
        color: Colors.black38,
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
      ),
    );

    final cardSteps = Text(
      "Steps: ${steps}",
      style: TextStyle(
        color: Colors.orangeAccent,
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
    );

    final cardDescription = Container(
      height: 90.0,
      width: 240.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 0.6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          cardTitle,
          cardActivities,
          cardSteps,
        ],
      ),
    );

    final card = Container(
      height: 200.0,
      width: 240.0,
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 50.0,
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
        ],
      ),
      child: Stack(
        children: [
          cardDescription,
          FloatingActionButtonGreen(),
        ],
        alignment: const Alignment(0.9, 1.6),
      ),
      alignment: const Alignment(0.0, 1.9),
    );

    return card;
  }
}
