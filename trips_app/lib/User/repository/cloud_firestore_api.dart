import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user.dart';

class CloudFirestoreAPI {
  final String USER = "users";
  final String PLACE = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USER).doc(user.id);
  }
}