import 'package:flutter/material.dart';

class Splash extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    child : new InkWell(
      child: new Column(
        children: <Widget>[
          new Container(
            child : new Image.asset('assets/logoAnimas.png' , width: 48.0 ,height: 48.0,)
          )
        ],
      ),
    );
  }
}