import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'auth_repository_interface.dart';

class AuthRepository extends Disposable implements IAuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future<FirebaseUser> getEmailPasswordLogin(String email, String password) async {
    final user = (await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    ))
        .user;
    return user;
  }

  @override
  Future getFacebookLogin() {
    // TODO: implement getFacebookLogin
    throw UnimplementedError();
  }

  @override
  Future<FirebaseUser> getGoogleLogin() async {
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final user = (await _auth.signInWithCredential(credential)).user;
    print("signed in ${user.displayName}");
    return user;
  }

  @override
  Future<String> getToken() {
    // TODO: implement getToken
    throw UnimplementedError();
  }

  @override
  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  @override
  Future getLogout() {
    return _auth.signOut();
  }
}
