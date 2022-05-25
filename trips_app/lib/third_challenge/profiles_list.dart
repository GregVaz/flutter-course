import 'package:flutter/material.dart';
import 'profile.dart';

class ProfilesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Profile(
          "assets/img/beach.jpg",
          "Amanda Murphy",
          "04 yeas",
          true
        ),
        Profile(
          "assets/img/city.jpg",
          "Grace Hartzel",
          "15 yeas",
          false
        ),
        Profile(
          "assets/img/ground.jpg",
          "Bella Hadid",
          "10 yeas",
          false
        ),
        Profile(
          "assets/img/rocks.jpg",
          "Julia Bergsoeff",
          "07 yeas",
          false
        ),
      ],
    );
  }

}