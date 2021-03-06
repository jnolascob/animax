import 'package:flutter/material.dart';
import 'dart:async';
import 'home_page.dart';
import '../items/loader.dart';

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
      // appBar: new AppBar(
      //   title: new Text('HomeScreen'),
      // ),
      // body: new Center(
      //   child: new Image.asset('assets/images/img_logo.png',),
      //   // child: new Text('Welcome to Home.!'),
      // ),
      backgroundColor: Colors.orange,
      body: new Center(
        child: new Loader()
      ),
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
  }

  @override
    void initState() {
      super.initState();
      startTime();
    }
}