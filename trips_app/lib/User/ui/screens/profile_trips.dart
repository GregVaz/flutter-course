import 'package:flutter/material.dart';
import 'profile_header.dart';
import 'package:trips_app/User/ui/widgets/profile_places_list.dart';
import 'package:trips_app/User/ui/widgets/profile_background.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfilePlacesList(),
          ],
        ),
      ],
    );
  }
}
