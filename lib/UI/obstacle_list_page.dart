import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../domain/obstacle_data.dart';
import '../state/obstacle_provider.dart';

class ObstacleListPage extends StatelessWidget {
  const ObstacleListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Obstacle> obstacles =
    Provider.of<ObstacleProvider>(context).getAllObstacles();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Obstacles'),
      ),
      body: ListView.builder(
        itemCount: obstacles.length,
        itemBuilder: (context, index) {
          Obstacle obstacle = obstacles[index];
          return ListTile(
            title: Text(obstacle.title),
            subtitle: Text(obstacle.body),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Delete the obstacle when the delete button is pressed
                Provider.of<ObstacleProvider>(context, listen: false)
                    .deleteObstacle(obstacle.id);
              },
            ),
          );
        },
      ),
    );
  }
}
