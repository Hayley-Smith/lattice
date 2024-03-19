import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lattice/UI/task_detail.dart';
import 'package:lattice/UI/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';

import '../domain/task_data.dart';
import '../state/task_provider.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var titleController = TextEditingController();
    var bodyController = TextEditingController();
    String taskTitle = '';
    String taskBody = '';
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("Task List"),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, provider, child) {
          List<Task> tasks = provider.tasks;

          return ReorderableListView(
            onReorder: (int oldIndex, int newIndex) {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final Task item = tasks.removeAt(oldIndex);
              tasks.insert(newIndex, item);
              provider.notifyListeners();
            },
            children: List.generate(
              tasks.length,
              (index) {
                return ListTile(
                  onTap: () {
                    // Navigate to TaskDetail page with the selected task
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskDetail(task: tasks[index]),
                      ),
                    );

                  },
                  key: Key('$index'),
                  title: Text(tasks[index].title),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: .9,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        'Add Task',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: titleController,
                        decoration: const InputDecoration(
                          hintText: 'Enter task title',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          taskTitle = value;
                        },
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: bodyController,
                        decoration: const InputDecoration(
                          hintText: 'Enter task body',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          taskBody = value;
                        },
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          TaskProvider taskProvider =
                              Provider.of<TaskProvider>(context, listen: false);
                          taskProvider.addTaskWithDetails(taskTitle, taskBody);
                          titleController.clear();
                          bodyController.clear();
                          Navigator.pop(context);
                        },
                        child: const Text('Add Task'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
