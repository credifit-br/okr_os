import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:okr_os/app/app_module.dart';

import 'package:okr_os/app/modules/home/home_controller.dart';
import 'package:okr_os/app/modules/home/home_module.dart';

class MockHomeController extends Mock implements HomeController {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  HomeController home;
  MockHomeController homeMock;

  setUp(() {
    Modular.init(AppModule());
    Modular.init(HomeModule());
    home = HomeModule.to.get<HomeController>();
    homeMock = MockHomeController();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isA<HomeController>());
    });

    test("logoff", () async {
      expect((await homeMock.logoff()), isNull);
    });
  });
}
