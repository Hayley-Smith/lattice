import 'package:flutter/material.dart';
import 'package:lattice/state/task_provider.dart';
import 'package:provider/provider.dart';
import '../domain/task_data.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;

  const EditTaskPage({Key? key, required this.task}) : super(key: key);

  @override
  _EditTaskPageState createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController _titleController;
  late TextEditingController _bodyController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.task.title);
    _bodyController = TextEditingController(text: widget.task.body);
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
        title: const Text("Edit Task"),
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
                taskProvider.updateTask(widget.task.id, _titleController.text,
                    _bodyController.text);

                // Then navigate back to the TaskDetail page
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),

    );
  }
}
