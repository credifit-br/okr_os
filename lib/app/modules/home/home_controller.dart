import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/auth/auth_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  logoff() async {
    await Modular.get<AuthController>().logout();
    Modular.to.popAndPushNamed('/');
  }
}
