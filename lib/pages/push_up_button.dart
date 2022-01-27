import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'dart:async';
import 'package:quiver/async.dart';

import 'package:intl/intl.dart';

final info_ready = "READY..";
final info_go = "GO!!";

//腕立て伏せページ
class PushUpButton extends StatefulWidget {
  const PushUpButton({Key? key}) : super(key: key);
  @override
  _State createState() => _State();

}

class _State extends State<PushUpButton> {
  int _start = 10;
  int _current = 10;

  void initState() {
    startTimer();
  }

  // カウントダウン処理を行う関数を定義
  void startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: _start), //初期値
      new Duration(seconds: 1), // 減らす幅
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _current = _start - duration.elapsed.inSeconds; //毎秒減らしていく
      });
    });

    // 終了時の処理 TODO その後結果画面へ
    sub.onDone(() {
      print("Done");
      sub.cancel();
      _current = 10;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("$_current秒", style: TextStyle(fontSize: 60)),
            Container(
              child: Text( info_ready,
                style: TextStyle(
                  fontSize: 32,
                  color: NeumorphicTheme.defaultTextColor(context),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom:30),
              child:
              NeumorphicButton(
                child: SizedBox(
                  width: 250,
                  height: 250,
                  child: Text('PUSH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 48,
                        color: Color.fromRGBO(255, 255, 255, 100)
                    ),
                  ),
                ),
                // onPressed: () => countUP(),
                style: NeumorphicStyle(
                  intensity: 0.8,
                  shape: NeumorphicShape.convex,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(180)),
                  depth: 8,
                  lightSource: LightSource.topLeft,
                  color: NeumorphicTheme.accentColor(context),
                ),
              ),
            ),
            /// Display stop watch time
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              ),
          ],
        ),
      ),
    );
  }
}

