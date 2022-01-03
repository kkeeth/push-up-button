import 'package:flutter_neumorphic/flutter_neumorphic.dart';

//過去の履歴を見るページ
class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('過去の記録'),
              const Text('タイムアタック'),
              const Text('限界突破'),
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