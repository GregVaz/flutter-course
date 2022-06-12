import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../Place/model/place.dart';
import '../model/user_model.dart';

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

  Future<void> updatePlaceDate(Place place) async {
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
}