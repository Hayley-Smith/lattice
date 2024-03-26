
import 'package:flutter/foundation.dart';
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
          title: 'Get dressed in workout clothes',
          body: 'Prepare and put on appropriate workout attire for the day.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '2',
          title: 'Feed Cat',
          body: '1 scoop',
          isCompleted: false,
          streak: 1),
      Task(
          id: '202',
          title: 'Clean Litter Box',
          body: '1 scoop',
          isCompleted: false,
          streak: 1),
      Task(
          id: '3',
          title: 'Walk Dogs 1 mile',
          body: 'Remember to bring bags',
          isCompleted: false,
          streak: 1),
      Task(
          id: '4',
          title: 'Fill Dogs Water',
          body: 'Dump and refill every day',
          isCompleted: false,
          streak: 1),
      Task(
          id: '5',
          title: 'Fill Dogs Food',
          body: 'Ensure the dogs have enough food in their feeder.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '6',
          title: 'Walk 1 mile on treadmill',
          body:
              'Take an easy mile on the treadmill and listen to Daily Blinks.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '11',
          title: 'Cool Down',
          body:
              'Engage in post-workout stretching or relaxation to cool down the body.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '12',
          title: 'Shower',
          body: 'Hang towel afterwards',
          isCompleted: false,
          streak: 1),
      Task(
          id: '13', title: 'Fix hair', body: '', isCompleted: false, streak: 1),
      Task(
          id: '14',
          title: 'Brush teeth',
          body: 'Brush teeth thoroughly to maintain oral hygiene.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '15',
          title: 'Face moisturizer',
          body:
              'Apply moisturizer to the face to keep the skin hydrated and healthy.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '16',
          title: 'Laundry in basket',
          body: 'Collect laundry from the laundry basket for washing.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '17',
          title: 'Collect dirty clothes from around the house',
          body:
              'Gather dirty clothes from various locations around the house for laundry.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '18',
          title: 'Start Load if needed',
          body:
              'If the laundry machine is available, start loading it with the collected dirty clothes.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '19',
          title: 'Gather Dishes from the house',
          body:
              'Collect dishes from different areas of the house for cleaning.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '20',
          title: 'Unload dishwasher',
          body:
              'Start with the bottom rack, then move to the top rack, and finally the silverware basket. Check for cleanliness, dry if needed, and return items to their designated places. Close the dishwasher door once everything is unloaded.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '21',
          title: 'Reload dishwasher',
          body: 'Flip sign to dirty',
          isCompleted: false,
          streak: 1),
      Task(
          id: '22',
          title: 'Start dishwasher',
          body: 'Flip sign to clean',
          isCompleted: false,
          streak: 1),
      Task(
          id: '23',
          title: 'Wipe counters',
          body:
              'Clean kitchen counters and other surfaces to maintain cleanliness and hygiene.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '24',
          title: 'Sweep floors',
          body:
              'Sweep the floors to remove dirt, dust, and debris for a clean living space.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '25',
          title: 'Gather trash from around the house',
          body:
              'Collect trash from various rooms and areas of the house for disposal.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '26',
          title: 'Take out trash',
          body: 'Take out trash and replace bag',
          isCompleted: false,
          streak: 1),
      Task(
          id: '27',
          title: 'Get mail',
          body: 'Retrieve mail from the mailbox for sorting and management.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '262',
          title: 'Wash Hands',
          body:
              'Wash hands when you return from getting mail and taking out trash',
          isCompleted: false,
          streak: 1),
      Task(
        id: '28',
        title: 'Sort and manage mail',
        body:
            'Organize and manage incoming mail, separating it into categories as needed.',
        isCompleted: false,
        streak: 1,
      ),
      Task(
        id: '29',
        title: 'Check email and calendar',
        body: 'Review and respond to emails in the inbox.',
        isCompleted: false,
        streak: 1,
      ),
      Task(
          id: '30',
          title: 'Check voicemail',
          body: 'Listen to and respond to any voicemail messages received.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '31',
          title: 'Update master todo list',
          body:
              'Review and update the master to-do list with any new tasks or changes.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '32',
          title: 'Choose three main work tasks to accomplish today',
          body:
              'Select three priority tasks to focus on for the day to ensure productivity and progress.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '33',
          title: 'Main Task 1',
          body:
              'This should be the task with the worst ramifications if not completed.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '34',
          title: 'Main task 2',
          body:
              'Select three priority tasks to focus on for the day to ensure productivity and progress.',
          isCompleted: false,
          streak: 1),
      Task(
          id: '35',
          title: 'Main task 3',
          body:
              'Select three priority tasks to focus on for the day to ensure productivity and progress.',
          isCompleted: false,
          streak: 1),
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

  void updateTask(String taskId, String newTitle, String newBody) {
    // Find the task with the provided ID
    Task? taskToUpdate = _tasks.firstWhere((task) => task.id == taskId, );

    if (taskToUpdate != null) {
      // Update task properties
      taskToUpdate.title = newTitle;
      taskToUpdate.body = newBody;

      // Notify listeners
      notifyListeners();
    } else {
      if (kDebugMode) {
        print("Task with ID $taskId not found.");
      }
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
    _tasks.insert(0, newTask);
    print(newTask.title);
    notifyListeners();
  }

  // Example method to add a new task
  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }


  void incrementStreak(String taskId) {
    // Find the task with the provided ID
    Task? taskToIncrement = _tasks.firstWhere((task) => task.id == taskId);

    if (taskToIncrement != null) {
      // Increment the streak by 1
      taskToIncrement.streak++;

      // Notify listeners
      notifyListeners();
    } else {
      if (kDebugMode) {
        print("Task with ID $taskId not found.");
      }
    }
  }

}
