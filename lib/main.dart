import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'pages/home.dart';
import 'pages/timeAttack.dart';
import 'pages/history.dart';
import 'pages/breakThrough.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new HomePage(),
        '/time_attack': (BuildContext context) => new TimeAttack(),
        '/break_through': (BuildContext context) => new BreakThrough(),
        '/history': (BuildContext context) => new History(),
      },
      title: '腕立てボタン',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
          defaultTextColor: Color.fromRGBO(109, 117, 135, 1),
          accentColor: Color.fromRGBO(239, 78, 78, 1),
          variantColor: Color.fromRGBO(235, 236, 240, 1),
          baseColor: Color.fromRGBO(235, 236, 240, 1),
          depth: 8,
          intensity: 0.5,
          lightSource: LightSource.topLeft),
    );
  }
}