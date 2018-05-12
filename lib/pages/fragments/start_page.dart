import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new _StartPageState();
    }
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      body: new Center(
        // child: new Image.asset('assets/images/img_logo.png',),
        child: new Text('INICIO'),
      ),
    );
  }
}
