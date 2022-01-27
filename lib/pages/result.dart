import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//結果表示ページ
class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 108),
                  child: Text('結果',
                    style: TextStyle(
                      fontSize: 32,
                      color: NeumorphicTheme.defaultTextColor(context),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: Text('過去の記録(限界突破)',
                    style: TextStyle(
                      fontSize: 24,
                      color: NeumorphicTheme.defaultTextColor(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(-0.8, 0.8),
            child: NeumorphicButton(
              child: SizedBox(
                width: 100,
                height: 50,
                child: Text('戻る',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
              ),
              onPressed: () => Navigator.of(context).pushNamed("/home"),
              style: NeumorphicStyle(
                intensity: 0.8,
                shape: NeumorphicShape.convex,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                depth: 8,
                lightSource: LightSource.topLeft,
                color: NeumorphicTheme.baseColor(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}