import 'package:flutter/material.dart';
import 'dart:async';
import '../pages/home.dart';

class SplashScreen extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new SplashPage();
    }
}

class SplashPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new _SplashPageState();
    }
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      body: new Center(
        child: new Image.asset('assets/images/img_logo.png',),
        // child: new Text('Welcome to Home.!'),
      ),
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/HomeScreen');
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomeApp()));
  }

  @override
    void initState() {
      super.initState();
      startTime();
    }
}