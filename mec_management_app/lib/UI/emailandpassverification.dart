import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
abstract class BaseAuth {
  Future<String> signIn(String email, String password);
  Future<String> signUp(String username, String email, String password);
  Future<void> signOut();
}
class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  // ignore: missing_return
  Future<String> signUp(String username, String email, String password) async {
    FirebaseUser user = (await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password)) as FirebaseUser;
    try {
      await user.sendEmailVerification();
      return user.uid;
    } catch (e) {
      print("An error occured while trying to send email verification");
      print(e.message);
    }
  }
  @override
  Future<String> signIn(String email, String password) async {
    FirebaseUser user = (await  _firebaseAuth.signInWithEmailAndPassword(email: email, password:password)) as FirebaseUser;
    if (user.isEmailVerified) return user.uid;
    return null;
  }
  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    return null;
  }

}
