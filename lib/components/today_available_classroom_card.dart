import 'package:flutter/material.dart';

class TodayAvailableClassroomCard extends StatelessWidget {
  const TodayAvailableClassroomCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(16),
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
