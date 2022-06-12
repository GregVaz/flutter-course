import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/firebaseAuthAPI.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<User?> signInFirebase() => _firebaseAuthAPI.signIn();
  signOutFirebase() => _firebaseAuthAPI.signOut();
  Stream<User?> currentFirebaseUser() => _firebaseAuthAPI.currentUser();
}
