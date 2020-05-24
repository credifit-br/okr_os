import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then(
      (v) => {
        Modular.to.popAndPushNamed('/home'),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        key: Key('splashBox'),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.4, // for loading_4dots.flr
          height: MediaQuery.of(context).size.height * 0.5,
          child: FlareActor(
            'assets/loading_4dots.flr',
            animation: 'Loading',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
