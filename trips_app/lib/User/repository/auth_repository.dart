import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/auth_firebase_api.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<User?> signInFirebase() => _firebaseAuthAPI.signIn();
  signOutFirebase() => _firebaseAuthAPI.signOut();
  Stream<User?> streamFirebaseUser() => _firebaseAuthAPI.streamUserChanges();
}
