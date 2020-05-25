import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/auth/auth_controller.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  AuthController auth = Modular.get();

  @observable
  bool loading = false;

  @observable
  TextEditingController emailController;

  @observable
  TextEditingController passwordController;

  @action
  void setEmail(String email) => auth.setEmail(email);

  @action
  void setPassword(String password) => auth.setPassword(password);

  @action
  Future loginWithGoogle() async {
    try {
      loading = true;
      await auth.loginWithGoogle();
      Modular.to.pushReplacementNamed('/home');
    } on Exception catch (e) {
      loading = false;
      print(e);
    }
  }

  @action
  Future loginWithEmailPassword() async {
    try {
      loading = true;
      await auth.loginWithEmailPassword();
      Modular.to.pushReplacementNamed('/home');
    } on Exception catch (e) {
      loading = false;
      print(e);
    }
  }
}
