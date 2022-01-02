import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//home
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Text('腕立てボタン',
                  style: TextStyle(
                    fontSize: 32,
                    color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: SvgPicture.asset(
                  'images/icon-push_up.svg',
                  semanticsLabel: 'shopping',
                  width: 50,
                  height: 50,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child:Text('スマホを顔の下に置いて\n腕立てするごとにアゴでタッチしよう！',
                    style: TextStyle(
                      fontSize: 18,
                      color: NeumorphicTheme.defaultTextColor(context),
                    ),
                    textAlign: TextAlign.center
                ),
              ),
              NeumorphicButton(
                margin: EdgeInsets.only(top: 50),
                child: Container(
                  width: 300,
                  height: 70,
                  child: new Row(
                    children: <Widget>[
                      Container(
                        child:SvgPicture.asset(
                          'images/icon-stopwatch.svg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: new Column(
                          children: <Widget>[
                            Text('タイムアタック',
                              style: TextStyle(
                                fontSize: 24,
                                color: NeumorphicTheme.defaultTextColor(context),
                              ),
                            ),
                            Text('時間内に何回できるかな',
                              style: TextStyle(
                                fontSize: 18,
                                color: NeumorphicTheme.defaultTextColor(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/time_attack"),
                style: NeumorphicStyle(
                  intensity: 0.8,
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: NeumorphicTheme.baseColor(context),
                ),
              ),
              NeumorphicButton(
                margin: EdgeInsets.only(top: 30, bottom: 50),
                child: Container(
                  child: Container(
                    width: 300,
                    height: 70,
                    child: new Row(
                      children: <Widget>[
                        Container(
                          child:SvgPicture.asset(
                            'images/icon-macyo.svg',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: new Column(
                            children: <Widget>[
                              Text('限界突破',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: NeumorphicTheme.defaultTextColor(context),
                                ),
                              ),
                              Text('何回できるかやってみよう',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: NeumorphicTheme.defaultTextColor(context),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/break_through"),
                style: NeumorphicStyle(
                  intensity: 0.8,
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: NeumorphicTheme.baseColor(context),
                ),
              ),
              TextButton(onPressed: () => Navigator.of(context).pushNamed("/history"),
                child:
                new Text('過去の記録を見る',
                  style: TextStyle(
                    fontSize: 18,
                    color: NeumorphicTheme.defaultTextColor(context),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}