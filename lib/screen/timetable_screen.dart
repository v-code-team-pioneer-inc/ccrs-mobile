import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../models/class.dart';
import '../logics/timetable/class_data_source.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
        body: SfCalendar(
          view: CalendarView.workWeek,
          dataSource: ClassDataSource(_getDataSource()),
        )
      )
    );
  }
}

List<Class> _getDataSource() {
  final List<Class> classes = <Class>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(minutes: 90));
  classes.add(Class(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));
  return classes;
}
