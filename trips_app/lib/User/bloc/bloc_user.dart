import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/cloud_firestore_repository.dart';

import '../model/user_model.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  // flujo de datos - stream (firebase)
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  // Casos de uso del objeto User
  // 1. Sign in de la aplicación
  Future<User?> signIn() {
    return _authRepository.signInFirebase();
  }

  signOut() {
    return _authRepository.signOutFirebase();
  }

  //2. registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(UserModel user) => _cloudFirestoreRepository.updateUserDataFirestore(user);

  @override
  void dispose() {}
}
