import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'options.dart';
import 'profile_information.dart';
import 'gradient_background.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBackground("Profile"),
        ProfileInformation(
            'assets/img/profile.jpg', 'Greg Vaz', 'gregvaz@example.com'),
        Options(),
        CardImageList(),
      ],
    );
  }
}
