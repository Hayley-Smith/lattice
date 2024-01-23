import 'package:flutter/material.dart';

import '../domain/day_data.dart';

class DayProvider extends ChangeNotifier {
  late Day _currentDay;

  Day get currentDay => _currentDay;

  void startDay() {
    Day day = Day(
      id: '',
      start: DateTime.now(),
    );
    _currentDay = day;
  }

  void setCurrentDay(Day day) {
    _currentDay = day;
    notifyListeners();
  }
}
