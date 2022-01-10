import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

final info_ready = "READY..";
final info_go = "GO!!";

//腕立て伏せページ
class PushUpButton extends StatefulWidget {
  const PushUpButton({Key? key}) : super(key: key);

  @override
  _State createState() => _State();

}

class _State extends State<PushUpButton> {

  final _isHours = true;
  final _scrollController = ScrollController();

  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
      mode: StopWatchMode.countDown,

      // TODO 渡ってきた値で事前設定
      presetMillisecond: StopWatchTimer.getMilliSecFromSecond(10),

      onChange: (value) => print('onChange $value'),
      onChangeRawSecond: (value) => print('onChangeRawSecond $value'),
      onChangeRawMinute: (value) => print('onChangeRawMinute $value'),
      onEnded: () {
        print('onEnded');
          Navigator.of(context).pushNamed("/next");
      }
  );


  void nextPage() {
    Navigator.of(context).pushNamed("/next");
  }

  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose();
  }

  void initState() {
    super.initState();
    //自動スタート
    _stopWatchTimer.onExecute.add(StopWatchExecute.start);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
              child: StreamBuilder<int>(
                stream: _stopWatchTimer.rawTime,
                initialData: _stopWatchTimer.rawTime.value,
                builder: (context, snap) {
                  final value = snap.data!;
                  final displayTime =
                  StopWatchTimer.getDisplayTime(value, hours: _isHours);
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          displayTime,
                          style: const TextStyle(
                              fontSize: 40,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

