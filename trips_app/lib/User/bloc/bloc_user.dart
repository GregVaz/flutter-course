import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/cloud_firestore_repository.dart';

import 'package:trips_app/Place/repository/firebase_storage_repository.dart';
import 'package:trips_app/User/model/user_model.dart';
import 'package:trips_app/User/ui/widgets/profile_place.dart';

import '../../Place/ui/widgets/cart_image_with_fab_icon.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  // flujo de datos - stream (firebase)
  Stream<User?> get streamFirebase => _authRepository.streamFirebaseUser();
  Future<User?> get currentUser => _authRepository.streamFirebaseUser().first;

  // Casos de uso del objeto User
  // 1. Sign in de la aplicación
  Future<User?> signIn() => _authRepository.signInFirebase();

  signOut() => _authRepository.signOutFirebase();

  //2. registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(UserModel user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepository.updatePlaceDataFirestore(place);

  // escuchar los cambios en firestore para los places
  Stream<QuerySnapshot> placesListStream() => _cloudFirestoreRepository.placesCollectionFirestore();
  Stream<QuerySnapshot> get placesStream => placesListStream();

  List<ProfilePlace> buildMyPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreRepository.buildMyPlaces(placesListSnapshot);
  List<CardImageWithFabIcon> buildPlaces(List<DocumentSnapshot> placesListSnapshot) => _cloudFirestoreRepository.buildPlaces(placesListSnapshot);

  // Get places by user uid
  Stream<QuerySnapshot> myPlacesListStream(String uid) => _cloudFirestoreRepository.placesCollectionByUserIdFirestore(uid);

  //3. Uso de firebase storage
  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<UploadTask> uploadFile(String path, File image) => _firebaseStorageRepository.uploadFile(path, image);

  @override
  void dispose() {}
}
