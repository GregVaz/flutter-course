import 'package:flutter/material.dart';
import 'profile_place.dart';
import 'package:trips_app/Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {
  Place place = Place(
      id: '',
      name: 'Knuckles Mountains Range',
      description: 'Hiking. Water fall hunting. Natural bath',
      urlImage: 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      likes: 123,
  );
  Place place2 = Place(
      id: '',
      name: 'Mountains',
      description: 'Hiking. Water fall hunting. Natural bath',
      urlImage: 'https://images.unsplash.com/photo-1486870591958-9b9d0d1dda99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      likes: 300,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace(place2),
        ],
      ),
    );
  }
}
