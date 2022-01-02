import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//History
class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('過去の記録'),
              Text('タイムアタック'),
              Text('限界突破'),
              RaisedButton(onPressed: () => Navigator.of(context).pop(), child: new Text('戻る'),)
            ],
          ),
        ),
      ),
    );
  }
}