import 'package:flutter/material.dart';

// TodayAvailableClassroomCard
import 'components/today_available_classroom_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '中央大学教室予約',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: '中央大学教室予約'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              '本日の空き教室',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
              textScaleFactor: 1.1,
            ),
          ),
          // 左寄せ
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TodayAvailableClassroomCard(),
                TodayAvailableClassroomCard(),
                TodayAvailableClassroomCard(),
                TodayAvailableClassroomCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
