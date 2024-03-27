import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';
import '../domain/obstacle_data.dart';
import '../state/obstacle_provider.dart';

class CreateObstaclePage extends StatelessWidget {
  const CreateObstaclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController bodyController = TextEditingController();

    return Scaffold(

      appBar: AppBar(
        title: const Text('Blockers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Describe Blocker',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(
                labelText: 'What are you going to do to fix it?',
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String title = titleController.text;
                String body = bodyController.text;
                DateTime timeStamp = DateTime.now();

                Obstacle newObstacle = Obstacle(
                  id: timeStamp.toString(), // You can generate an ID based on the timestamp
                  title: title,
                  body: body,
                  timeStamp: timeStamp,
                );

                // Add the new obstacle using the provider
                Provider.of<ObstacleProvider>(context, listen: false)
                    .addObstacle(newObstacle);

                // Navigate back to previous screen
                Navigator.pushNamed(context, "/obstacle_list");
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
