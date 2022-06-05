import 'package:flutter/material.dart';
import 'package:trips_app/widgets/gradient_background.dart';
import 'package:trips_app/Place/ui/widgets/card_image_list.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBackground("Popular", 250.0),
        CardImageList(),
      ],
    );
  }
}
