import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:okr_os/app/app_module.dart';

import 'package:okr_os/app/pages/splash/splash_page.dart';

main() {
  setUpAll(() {
    Modular.init(AppModule());
  });
  testWidgets('SplashPage has loading box', (tester) async {
    await tester.pumpWidget(buildTestableWidget(SplashPage()));
    await tester.pump(Duration(seconds: 3));
    final titleFinder = find.byKey(Key('splashBox'));
    expect(titleFinder, findsOneWidget);
  });
}
