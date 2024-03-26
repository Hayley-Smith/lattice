import 'package:flutter/material.dart';

import '../domain/day_data.dart';

class DayProvider extends ChangeNotifier {
  Day? _currentDay;

  Day? get currentDay => _currentDay;

  bool isDayStarted() {
    return _currentDay != null; // Check if _currentDay is not null
  }

  void startDay() {
    if (!isDayStarted()) {
      _currentDay = Day(
        id: DateTime.now().toString(),
        start: DateTime.now(),
        meals: [],
      );
      notifyListeners();
    }
  }

  void setCurrentDay(Day day) {
    _currentDay = day;
    notifyListeners();
  }
}
