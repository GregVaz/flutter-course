import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/Place/model/place.dart';
import 'package:trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/cloud_firestore_repository.dart';

import '../model/user_model.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  // flujo de datos - stream (firebase)
  Stream<User?> get streamFirebase => _authRepository.streamFirebaseUser();
  Future<User?> get currentUser =>_authRepository.streamFirebaseUser().first;

  // Casos de uso del objeto User
  // 1. Sign in de la aplicación
  Future<User?> signIn() => _authRepository.signInFirebase();

  signOut() => _authRepository.signOutFirebase();

  //2. registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(UserModel user) => _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepository.updatePlaceDataFirestore(place);

  @override
  void dispose() {}
}
