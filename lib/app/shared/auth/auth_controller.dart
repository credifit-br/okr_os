import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'repositories/auth_repository_interface.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final IAuthRepository _authRepository = Modular.get();

  @observable
  FirebaseUser user;

  @observable
  String email;

  @observable
  String password;

  @action
  setUser(FirebaseUser value) => user = value;

  @action
  setEmail(String value) => email = value;

  @action
  setPassword(String value) => password = value;

  _AuthControllerBase() {
    _authRepository.getUser().then(setUser);
  }

  @action
  Future loginWithEmailPassword() async {
    user = await _authRepository.getEmailPasswordLogin(email, password);
  }

  @action
  Future loginWithGoogle() async {
    user = await _authRepository.getGoogleLogin();
  }

  @action
  Future logout() {
    return _authRepository.getLogout();
  }
}
