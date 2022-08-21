import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '本日の空き教室',
            ),
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
      ),
    );
  }
}

class TodayAvailableClassroomCard extends StatelessWidget {
  const TodayAvailableClassroomCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        child: Container(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'F301',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 4),
                    const Text(
                      '14:00 - 15:00',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: SizedBox(
                        height: 22,
                        width: 75,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            '行くかも',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
