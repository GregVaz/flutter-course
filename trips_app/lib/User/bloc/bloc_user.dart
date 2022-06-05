import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();
  // Casos de uso del objeto User
  // 1. Sign in de la aplicación
  Future<UserCredential> signIn() {
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {}
}
