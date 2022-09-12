import 'package:flutter/material.dart';

class Class {
  Class(this.className, this.from, this.to, this.background, this.isAllDay);

  String className;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
