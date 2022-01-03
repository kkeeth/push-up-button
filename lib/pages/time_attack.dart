import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//タイムアタックメニューページ
class TimeAttack extends StatelessWidget {
  const TimeAttack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('タイムアタック'),
              const Text('時間内に腕立て伏せを何回できるかな'),
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