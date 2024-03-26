import 'package:flutter/material.dart';
import 'package:lattice/state/task_provider.dart';
import 'package:provider/provider.dart';
import '../domain/task_data.dart';

class CreateTaskPage extends StatefulWidget {


  CreateTaskPage({
    Key? key,
  }) : super(key: key);

  @override
  _CreateTaskPageState createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {

   Task task = Task(isCompleted: false, id: "2346", streak: 4, title: "Sample Title", body: "sample body");
  late TextEditingController _titleController;
  late TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: task.title);
    _bodyController = TextEditingController(text: task.body);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle save operation here
                // For example, update task in the database

                TaskProvider taskProvider =
                    Provider.of<TaskProvider>(context, listen: false);
                taskProvider.addTaskWithDetails( _titleController.text,
                    _bodyController.text);

                // Then navigate back to the TaskDetail page
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/addTask");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
