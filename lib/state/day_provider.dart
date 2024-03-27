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

  void endDay() {
    if (isDayStarted()) {
      // Get the current time
      DateTime now = DateTime.now();

      // Calculate the time 16 hours after the day started
      DateTime dayEnd = _currentDay!.start.add(const Duration(hours: 16));

      // Check if the current time is past the calculated end time
      if (now.isAfter(dayEnd)) {
        _currentDay = null; // Reset _currentDay to null
        notifyListeners();
      }
    }
  }

  void setCurrentDay(Day day) {
    _currentDay = day;
    notifyListeners();
  }
}
