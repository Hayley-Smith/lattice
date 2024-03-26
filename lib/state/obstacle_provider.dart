import 'package:flutter/material.dart';
import '../domain/obstacle_data.dart';

class ObstacleProvider with ChangeNotifier {
  List<Obstacle> _obstacles = [];

  // Constructor to initialize with sample data
  ObstacleProvider() {
    // Adding sample data
    _obstacles = [
      Obstacle(
        id: '1',
        title: 'Procrastination',
        body: 'Struggling to start tasks on time.',
        timeStamp: DateTime.now(),
      ),
      Obstacle(
        id: '2',
        title: 'Distractions',
        body: 'Getting distracted easily while working.',
        timeStamp: DateTime.now(),
      ),
      Obstacle(
        id: '3',
        title: 'Time Management',
        body: 'Difficulty in managing time effectively.',
        timeStamp: DateTime.now(),
      ),
    ];
  }

  List<Obstacle> get obstacles => _obstacles;

  // Method to add a new obstacle
  void addObstacle(Obstacle obstacle) {
    _obstacles.add(obstacle);
    notifyListeners();
  }

  // Method to retrieve all obstacles
  List<Obstacle> getAllObstacles() {
    return _obstacles;
  }

  // Method to update an obstacle
  void updateObstacle(Obstacle updatedObstacle) {
    var index = _obstacles
        .indexWhere((obstacle) => obstacle.id == updatedObstacle.id);
    if (index != -1) {
      _obstacles[index] = updatedObstacle;
      notifyListeners();
    }
  }

  // Method to delete an obstacle
  void deleteObstacle(String id) {
    _obstacles.removeWhere((obstacle) => obstacle.id == id);
    notifyListeners();
  }
}
