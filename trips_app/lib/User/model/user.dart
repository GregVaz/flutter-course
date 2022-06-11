import 'package:trips_app/Place/model/place.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String photoURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

  // myFavoritePlaces
  // myPlaces

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.photoURL,
    this.myPlaces = const [],
    this.myFavoritePlaces = const []
  });
}