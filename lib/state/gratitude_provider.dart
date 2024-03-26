import 'package:flutter/material.dart';

import '../domain/gratitude_data.dart';

class GratitudeProvider with ChangeNotifier {
  List<Gratitude> _gratitudes = [];

  // Constructor to initialize with sample data
  GratitudeProvider() {
    // Adding sample data
    _gratitudes = [
      Gratitude(
        id: '1',
        title: 'Family Time',

        body: 'We had a wonderful dinner together and shared stories.',
        timeStamp: DateTime.now(),
      ),
      Gratitude(
        id: '2',
        title: 'Morning Walk',

        body: 'Enjoyed the fresh air and beautiful scenery.',
        timeStamp: DateTime.now(),
      ),
      Gratitude(
        id: '3',
        title: 'Learning Flutter',

        body: 'Experimented with widgets and learned about state management.',
        timeStamp: DateTime.now(),
      ),
    ];
  }

  List<Gratitude> get gratitudes => _gratitudes;

  // Method to add a new gratitude
  void addGratitude(Gratitude gratitude) {
    _gratitudes.add(gratitude);
    notifyListeners();
  }

  // Method to retrieve all gratitudes
  List<Gratitude> getAllGratitudes() {
    return _gratitudes;
  }

  // Method to update a gratitude
  void updateGratitude(Gratitude updatedGratitude) {
    var index =
    _gratitudes.indexWhere((gratitude) => gratitude.id == updatedGratitude.id);
    if (index != -1) {
      _gratitudes[index] = updatedGratitude;
      notifyListeners();
    }
  }

  // Method to delete a gratitude
  void deleteGratitude(String id) {
    _gratitudes.removeWhere((gratitude) => gratitude.id == id);
    notifyListeners();
  }
}
