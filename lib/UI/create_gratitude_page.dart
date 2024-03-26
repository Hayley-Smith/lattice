import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../domain/gratitude_data.dart';
import '../state/gratitude_provider.dart';

class CreateGratitudePage extends StatelessWidget {
  const CreateGratitudePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController bodyController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('What\'s good?'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(
                labelText: 'Body',
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String title = titleController.text;
                String body = bodyController.text;
                DateTime timeStamp = DateTime.now();

                Gratitude newGratitude = Gratitude(
                  id: timeStamp.toString(), // You can generate an ID based on the timestamp
                  title: title,
                  body: body,
                  timeStamp: timeStamp,
                );

                // Add the new gratitude using the provider
                Provider.of<GratitudeProvider>(context, listen: false)
                    .addGratitude(newGratitude);

                // Navigate back to previous screen
                Navigator.pushNamed(context, "/gratitude_list");
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
