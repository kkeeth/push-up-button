import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:push_up_button/pages/push_up_button.dart';

import 'pages/home.dart';
import 'pages/time_attack.dart';
import 'pages/history.dart';
import 'pages/break_through.dart';
import 'pages/result.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => const HomePage(),
        '/time_attack': (BuildContext context) => const TimeAttack(),
        '/break_through': (BuildContext context) => const BreakThrough(),
        '/history': (BuildContext context) => const HistoryPage(),
        '/push_up_button': (BuildContext context) => const PushUpButton(),
        '/result': (BuildContext context) => const Result(),
      },
      title: '腕立てボタン',
      themeMode: ThemeMode.light,
      theme: const NeumorphicThemeData(
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