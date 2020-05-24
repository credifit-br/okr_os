import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "OKR OS"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          key: Key('menu'),
          children: [
            DrawerHeader(child: Text('Menu')),
            ListTile(
              title: Text('Page 1'),
              onTap: () {
                print('Page 1 tapped');
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Page 2'),
              onTap: () {
                print('Page 2 tapped');
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Page 3'),
              onTap: () {
                print('Page 3 tapped');
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    );
  }
}
