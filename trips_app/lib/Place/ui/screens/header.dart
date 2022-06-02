import 'package:flutter/material.dart';
import 'gradient_background.dart';
import 'card_image_list.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBackground("Popular"),
        CardImageList(),
      ],
    );
  }
}
