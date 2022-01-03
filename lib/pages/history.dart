import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// 過去の履歴を見るページ
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryPage> {
  List<Map<String, dynamic>> timeRecords = [];
  List<Map<String, dynamic>> limitRecords = [];
  final firebaseInstance = FirebaseFirestore.instance;

  void initState() {
    super.initState();
    getTimeAttack();
    getLimitAttack();
  }

  getTimeAttack() async {
    QuerySnapshot snapshots = await firebaseInstance
        .collection('timeAttack')
        .get();
    setState(() {
      for (var item in snapshots.docs) {
        timeRecords.add(item.data() as Map<String, dynamic>);
      }
    });
  }
  getLimitAttack() async {
    QuerySnapshot snapshots = await firebaseInstance
        .collection('limitAttack')
        .get();
    setState(() {
      for (var item in snapshots.docs) {
        limitRecords.add(item.data() as Map<String, dynamic>);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
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
                  child: Column(
                    children: <Widget>[
                      Text(
                        'タイムアタック',
                        style: TextStyle(
                          fontSize: 24,
                          color: NeumorphicTheme.defaultTextColor(context),
                        ),
                      ),
                      SizedBox(height: 18), // 余白用
                      Column(
                        children: timeRecords.map((record) {
                          return ListTile(
                            contentPadding: EdgeInsets.only(left: 60, top: -50),
                            dense: true,
                            title: Text(
                              '${record['date']} ${record['time']}分${record['count']}回',
                              style: TextStyle(
                                fontSize: 24,
                                height: 0,
                                color: NeumorphicTheme.defaultTextColor(context),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '限界突破',
                        style: TextStyle(
                          fontSize: 24,
                          color: NeumorphicTheme.defaultTextColor(context),
                        ),
                      ),
                      SizedBox(height: 18), // 余白用
                      Column(
                        children: limitRecords.map((record) {
                          return ListTile(
                            contentPadding: EdgeInsets.only(left: 60, top: -50),
                            dense: true,
                            title: Text(
                              '${record['date']} ${record['time']}分${record['count']}回',
                              style: TextStyle(
                                fontSize: 24,
                                height: 0,
                                color: NeumorphicTheme.defaultTextColor(context),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
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
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(50)),
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