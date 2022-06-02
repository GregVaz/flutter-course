import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/traveler.jpg", "Fer", "2 reviews - 6 followers",
            "El mejor lugar"),
        Review("assets/img/traveler2.jpg", "Exist", "2 reviews - 60 followers",
            "El mejor lugar"),
        Review("assets/img/traveler3.jpg", "Paimon",
            "1 reviews - 300 followers", "El mejor lugar"),
      ],
    );
  }
}
