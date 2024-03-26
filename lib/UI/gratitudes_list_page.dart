import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';
import '../domain/gratitude_data.dart';
import '../state/gratitude_provider.dart';

class GratitudeListPage extends StatelessWidget {
  const GratitudeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gratitudeProvider = Provider.of<GratitudeProvider>(context);

    return Scaffold(drawer: CustomDrawer(),
      appBar: AppBar(

        title: const Text('Gratitude List'),
      ),
      body: ListView.builder(
        itemCount: gratitudeProvider.gratitudes.length,
        itemBuilder: (context, index) {
          final gratitude = gratitudeProvider.gratitudes[index];
          return ListTile(
            title: Text(gratitude.title),
            subtitle: Text(gratitude.body),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                gratitudeProvider.deleteGratitude(gratitude.id);
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
            builder: (context) => _buildBottomSheet(context, gratitudeProvider),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBottomSheet(BuildContext context, GratitudeProvider provider) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController solutionController = TextEditingController();
    final TextEditingController bodyController = TextEditingController();

    return FractionallySizedBox(
      heightFactor: .9,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Feeling grateful for:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newGratitude = Gratitude(
                  id: UniqueKey().toString(),
                  title: titleController.text,
                  body: bodyController.text,
                  timeStamp: DateTime.now(),
                );
                provider.addGratitude(newGratitude);
                Navigator.pop(context);
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
