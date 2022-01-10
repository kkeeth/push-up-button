import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//限界突破メニューページ
class BreakThrough extends StatelessWidget {
  const BreakThrough({Key? key}) : super(key: key);

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
                  child: Text('限界突破',
                    style: TextStyle(
                      fontSize: 32,
                      color: NeumorphicTheme.defaultTextColor(context),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Text('時間を気にせず何回できるかやってみよう',
                    style: TextStyle(
                      fontSize: 18,
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
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child:
                  NeumorphicButton(
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Text('始める',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: NeumorphicTheme.defaultTextColor(context),
                        ),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pushNamed("/push_up_button"),
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
              onPressed: () => Navigator.of(context).pop(),
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