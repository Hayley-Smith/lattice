import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/custom_drawer.dart';
import 'package:lattice/UI/widgets/date_card.dart';
import 'package:provider/provider.dart';

import '../domain/task_data.dart';
import '../state/task_provider.dart';

class TaskDetail extends StatelessWidget {
  final Task task;
  const TaskDetail({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgwhite.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Card(
            color: Theme.of(context).cardColor,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .90,
              width: MediaQuery.of(context).size.width * .90,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        task.title,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    Text(
                      task.body,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),Text(
                      "${task.streak} days running!",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Divider(
                      color: Colors.black87,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        onPressed: () {
                          TaskProvider taskProvider =
                          Provider.of<TaskProvider>(context, listen: false);
                          taskProvider.markCompleted(task);

                          Navigator.pushReplacementNamed(context, '/dashboard');
                        },
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .6,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Completed",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        onPressed: () {
                          //todo: task goes to end of the list
                          TaskProvider taskProvider =
                              Provider.of<TaskProvider>(context, listen: false);
                          taskProvider.moveTaskToEnd(task);
                          Navigator.pushReplacementNamed(context, '/dashboard');
                        },
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .6,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Circle Back",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        onPressed: () {
                          TaskProvider taskProvider =
                          Provider.of<TaskProvider>(context, listen: false);
                          taskProvider.markCompleted(task);

                          Navigator.pushReplacementNamed(context, '/dashboard');

                        },
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .6,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Skip",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
