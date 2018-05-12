import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new _DownloadPageState();
    }
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text('HomeScreen'),
      ),
      body: new Center(
        // child: new Image.asset('assets/images/img_logo.png',),
        child: new Text('DESCARGAS'),
      ),
    );
  }
}
