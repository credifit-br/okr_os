import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:okr_os/app/app_module.dart';
import 'package:okr_os/app/modules/home/home_module.dart';
import 'package:okr_os/app/modules/home/home_page.dart';

main() {
  setUpAll(() {
    Modular.init(AppModule());
    Modular.init(HomeModule());
  });
  testWidgets('HomePage has title', (tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage(title: 'Home')));
    final titleFinder = find.text('Home');
    expect(titleFinder, findsOneWidget);
  });
}
