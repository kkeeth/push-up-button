import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//限界突破メニューページ
class BreakThrough extends StatelessWidget {
  const BreakThrough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('限界突破'),
              const Text('時間を気にせず何回できるかやってみよう'),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('戻る'),
              )
            ],
          ),
        ),
      ),
    );
  }
}