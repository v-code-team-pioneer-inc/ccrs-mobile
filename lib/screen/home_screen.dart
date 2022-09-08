import 'package:flutter/material.dart';

import './rooms_screen.dart';
import '../components/today_available_classroom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
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
          const SizedBox(height: 120),
          // button
          ElevatedButton(
            child: const Text(
              '教室を検索する',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            // 色を白に
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return const RoomsScreen();
            })),
          ),
        ],
      ),
    );
  }
}
