import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/task_data.dart';
import '../../state/task_provider.dart';

class OnDeckCard extends StatelessWidget {
  const OnDeckCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // Navigator.pushNamed(context, '/task_detail');
        },
        child: Opacity(
          opacity: .7,
          child: Card(
            elevation: 10,
            shadowColor: Colors.black87,
            color: Theme.of(context).cardColor,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .08,
              width: MediaQuery.of(context).size.width * .8,
              child: Center(
                child: Consumer<TaskProvider>(
                  builder: (context, provider, child) {
                      Task upNext = provider.tasks[1];


                    return Text(
                      upNext.title,
                      style: Theme.of(context).textTheme.titleMedium,
                      softWrap: true,
                    );
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
