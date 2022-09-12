import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(
        body: Container(
          child: SfCalendar(
            view: CalendarView.workWeek,
          )
        )
      )
    );
  }
}
