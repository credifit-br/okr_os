import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextFormField(
            key: Key('emailTextForm'),
            controller: controller.emailController,
            decoration: InputDecoration(hintText: 'email'),
            onChanged: controller.setEmail,
          ),
          TextFormField(
            key: Key('passwordTextForm'),
            controller: controller.emailController,
            decoration: InputDecoration(hintText: 'password'),
            onChanged: controller.setPassword,
            obscureText: true,
          ),
          RaisedButton(
            onPressed: controller.loginWithEmailPassword,
            child: Text('Login with Email and Password'),
          ),
          RaisedButton(
            onPressed: controller.loginWithGoogle,
            child: Text('Login with Google'),
          ),
        ],
      ),
    );
  }
}
