import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> signIn() async {
    GoogleSignInAccount? googleSingInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication? gSA = await googleSingInAccount?.authentication;

    AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: gSA?.idToken,
      accessToken: gSA?.accessToken,
    );

    UserCredential userCredential =
        await _auth.signInWithCredential(authCredential);
    User? user = userCredential.user;

    return user;
  }

  signOut() async {
    await _auth.signOut().then((value) => print("Sesión cerrada"));
    googleSignIn.signOut();
  }
}
