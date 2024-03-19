import 'package:flutter/material.dart';

import '../domain/task_data.dart';

class TaskProvider extends ChangeNotifier {
  late List<Task> _tasks = [];


  List<Task> get tasks => _tasks;


  TaskProvider() {
    // Initialize with sample tasks
    _tasks = [
      Task(
        id: '1',
        title: 'Unload the dishwasher',
        body: 'This is the body of Sample Task 1.',
        isCompleted: false, streak: 3,
      ),
      Task(
        id: '2',
        title: 'Load the dishwasher',
        body: 'This is the body of Sample Task 2.',
        isCompleted: false, streak: 7,
      ),
      Task(
        id: '3',
        title: 'Fold the clean Laundry',
        body: 'This is the body of Sample Task 3.',
        isCompleted: false, streak: 2,
      ),
      Task(
        id: '4',
        title: 'Start a load of wash',
        body: 'This is the body of Sample Task 4.',
        isCompleted: false, streak: 5,
      ),
      Task(
        id: '5',
        title: 'Dry clothes',
        body: 'This is the body of Sample Task 5.',
        isCompleted: false, streak: 5,
      ),
    ];
  }

  // Method to move a task to the end of the list
  void moveTaskToEnd(Task task) {
    if (_tasks.contains(task)) {
      _tasks.remove(task);
      _tasks.add(task);
      notifyListeners();
    }
  }


  // Method to mark a task as completed
  void markCompleted(Task task) {
    if (tasks.contains(task)) {

      tasks.remove(task);
      notifyListeners();
    }
  }

  void addTaskWithDetails(String title, String body) {
    Task newTask = Task(
      id: _tasks.length.toString(),
      // Generating ID based on the current list length
      title: title,
      body: body,
      isCompleted: false, streak: 0,
    );
    _tasks.add(newTask);
    print(newTask.title);
    notifyListeners();
  }


  // Example method to add a new task
  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }
}
