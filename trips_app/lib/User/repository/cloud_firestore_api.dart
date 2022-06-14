import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/Place/ui/widgets/cart_image_with_fab_icon.dart';
import 'package:trips_app/User/model/user_model.dart';
import 'package:trips_app/User/ui/widgets/profile_place.dart';

class CloudFirestoreAPI {
  final String USER = "users";
  final String PLACE = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(UserModel user) async {
    DocumentReference ref = _db.collection(USER).doc(user.uid);
    return ref.set({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlaces,
      'lastSingIn': DateTime.now()
    }, SetOptions(merge: true));
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference<Map<String, dynamic>> ref = _db.collection(PLACE);
    User? user  = _auth.currentUser;
    DocumentReference _userRef = _db.collection(USER).doc(user?.uid);

    await ref.add({
      'name': place.name,
      'description': place.description,
      'urlImage': place.urlImage,
      'likes': 0,
      'userOwner': _userRef
    }).then((DocumentReference docRef) {
      docRef.get().then((DocumentSnapshot snapshot) {
        DocumentReference refUsers = _db.collection(USER).doc(user?.uid);
        refUsers.update({
          'myPlaces': FieldValue.arrayUnion([snapshot.reference])
        });
      });
    });
  }

  Stream<QuerySnapshot> placesCollection() {
    return _db.collection(PLACE).snapshots();
  }
  
  Stream<QuerySnapshot> placesCollectionByUserId(String uid) {
    DocumentReference _userRef = _db.collection(USER).doc(uid);
    return _db.collection(PLACE).where("userOwner", isEqualTo: _userRef).snapshots();
  }

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) {
    List<ProfilePlace> profilePlaces = <ProfilePlace>[];
    placesListSnapshot.forEach((place) {
      profilePlaces.add(ProfilePlace(
        Place(
          name: place['name'],
          description: place['description'],
          urlImage: place['urlImage'],
          likes: place['likes'],
        )
      ));
    });
    return profilePlaces;
  }

  List<Place> buildPlaces(List<DocumentSnapshot> placesListSnapshot, UserModel user) {
    List<Place> places = <Place>[];

    placesListSnapshot.forEach((place)  {
      Place currentPlace = Place(
          id: place.reference.id,
          name: place["name"],
          description: place["description"],
          urlImage: place["urlImage"],
          likes: place["likes"]
      );
      List<DocumentReference> usersLikedRefs = List<DocumentReference>.from(place["usersLiked"]);
      currentPlace.liked = false;
      usersLikedRefs.forEach((drUL) {
        if (user.uid == drUL.id) {
          currentPlace.liked = true;
        }
      });
      places.add(currentPlace);
    });
    return places;
  }

  Future likePlace(Place place, String uid) async {
    await _db.collection(PLACE).doc(place.id).get()
        .then((DocumentSnapshot ds){
      int likes = ds["likes"];

      DocumentReference _userRef = _db.collection(USER).doc(uid);

      _db.collection(PLACE).doc(place.id)
          .update({
        'likes': place.liked ? likes+1 : likes-1,
        'usersLiked':
        place.liked?
        FieldValue.arrayUnion([_userRef]):
        FieldValue.arrayRemove([_userRef])
      });
    });
  }
}