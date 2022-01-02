import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//TimeAttack
class TimeAttack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('タイムアタック'),
              Text('時間内に腕立て伏せを何回できるかな'),
              RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('戻る'),)
            ],
          ),
        ),
      ),
    );
  }
}