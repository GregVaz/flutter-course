import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trips_app/User/model/user_model.dart';
import 'package:trips_app/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserModel user) => _cloudFirestoreAPI.updateUserData(user);
}