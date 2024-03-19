import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/task_data.dart';
import '../../state/task_provider.dart';

class UpNextCard extends StatelessWidget {
  const UpNextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/task_detail');
      },
      child: Card(
        elevation: 10,
        shadowColor: Colors.black87,
        color: Colors.white,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          width: MediaQuery.of(context).size.width * .9,
          child: Center(
            child: Consumer<TaskProvider>(
              builder: (context, provider, child) {
               Task upNext = provider.tasks[0];
                return Text(
                  upNext.title,
                  style: Theme.of(context).textTheme.displaySmall,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
