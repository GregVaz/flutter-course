import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/model/user_model.dart';
import 'package:trips_app/User/repository/cloud_firestore_api.dart';

import '../../Place/ui/widgets/cart_image_with_fab_icon.dart';
import '../ui/widgets/profile_place.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserModel user) => _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceDataFirestore(Place place) => _cloudFirestoreAPI.updatePlaceData(place);

  Stream<QuerySnapshot> placesCollectionFirestore() => _cloudFirestoreAPI.placesCollection();
  Stream<QuerySnapshot> placesCollectionByUserIdFirestore(String uid) => _cloudFirestoreAPI.placesCollectionByUserId(uid);

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildMyPlaces(placesListSnapshot);
  List<CardImageWithFabIcon> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreAPI.buildPlaces(placesListSnapshot);
}