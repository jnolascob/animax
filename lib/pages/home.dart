import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Animax',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new _MainPageState();
    }
}

class _MainPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new PageView(
          children: [
            new Container(color: Colors.red),
            new Container(color: Colors.blue),
            new Container(color: Colors.grey)
          ]
        )
    );
  }
 }

