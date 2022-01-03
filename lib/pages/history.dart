import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//過去の履歴を見るページ
class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

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
                child: Text('過去の記録',
                  style: TextStyle(
                    fontSize: 32,
                    color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Text('タイムアタック',
                  style: TextStyle(
                    fontSize: 24,
                    color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
                //TODO: タイムアタックの記録をfirebaseから表示
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Text('限界突破',
                  style: TextStyle(
                    fontSize: 24,
                    color: NeumorphicTheme.defaultTextColor(context),
                  ),
                ),
                //TODO: 限界突破の記録をfirebaseから表示
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