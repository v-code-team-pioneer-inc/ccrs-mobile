import 'package:flutter/material.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                '本日の空き教室',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                textScaleFactor: 1.1,
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
              columns: const [
                DataColumn(
                  label: Text('時間'),
                ),
                DataColumn(
                  label: Text('F100'),
                ),
                DataColumn(
                  label: Text('F101'),
                ),
                DataColumn(
                  label: Text('F102'),
                ),
                DataColumn(
                  label: Text('F103'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(Text('09:00 ~ 10:40')),
                    DataCell(Text('×')),
                    DataCell(Text('◯')),
                    DataCell(Text('◯')),
                    DataCell(Text('◯')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('10:50 ~ 12:30')),
                    DataCell(Text('◯')),
                    DataCell(Text('◯')),
                    DataCell(Text('×')),
                    DataCell(Text('◯')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('12:30 ~ 13:20')),
                    DataCell(Text('◯')),
                    DataCell(Text('×')),
                    DataCell(Text('×')),
                    DataCell(Text('×')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('13:20 ~ 15:00')),
                    DataCell(Text('◯')),
                    DataCell(Text('◯')),
                    DataCell(Text('◯')),
                    DataCell(Text('×')),
                  ],
                ),
              ],
            ),
            ),
          ],
        ),
      )
    );
  }
}
