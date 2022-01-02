import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//BreakThrough
class BreakThrough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('限界突破'),
              Text('時間を気にせず何回できるかやってみよう'),
              RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('戻る'),)
            ],
          ),
        ),
      ),
    );
  }
}