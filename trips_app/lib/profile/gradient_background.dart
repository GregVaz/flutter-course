import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  String title = "Profile";

  GradientBackground(this.title);

  @override
  Widget build(BuildContext context) {
    final title_text = Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
      ),
    );

    final settings_button = Icon(
      Icons.settings,
      color: Colors.white30,
      size: 18.0,
    );

    final header_container = Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [title_text, settings_button],
      ),
    );

    return Container(
      height: 350.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      child: header_container,
      alignment: const Alignment(-0.8, -0.8),
    );
  }
}
