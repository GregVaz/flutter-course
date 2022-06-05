import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/User/repository/firebaseAuthAPI.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<UserCredential> signInFirebase() => _firebaseAuthAPI.signIn();
}
