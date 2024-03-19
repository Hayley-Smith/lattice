

import 'package:flutter/material.dart';

import '../domain/day_data.dart';

class DayProvider extends ChangeNotifier {
   Day _currentDay = Day(
     id: 'Start the Day',
     start: DateTime.now(),
     meals: [],
   );

  Day get currentDay => _currentDay;

  void startDay() {

    Day day = Day(
      id: 'Day Started: 6:03am \nBedtime: 10:03pm',
      start: DateTime.now(),
      meals: [],
    );
    _currentDay = day;
  }

  void setCurrentDay(Day day) {
    _currentDay = day;
    notifyListeners();
  }
}
