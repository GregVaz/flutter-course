import 'package:flutter/material.dart';
import 'review_list.dart';
import 'description_place.dart';
import 'header.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Duwili Ella", 4,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget lacinia velit. Aliquam tellus purus, volutpat eget sodales nec, gravida et velit. Nullam porttitor."),
            const ReviewList(),
          ],
        ),
        Header(),
      ],
    );
  }
}
