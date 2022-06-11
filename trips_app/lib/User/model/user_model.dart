import 'package:trips_app/Place/model/place.dart';

class UserModel {
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlaces;

  // myFavoritePlaces
  // myPlaces

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.photoURL,
    this.myPlaces = const [],
    this.myFavoritePlaces = const []
  });
}