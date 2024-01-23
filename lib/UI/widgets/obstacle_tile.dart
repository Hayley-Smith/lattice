import 'package:flutter/material.dart';

class ObstacleTile extends StatelessWidget {
  const ObstacleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Difficulties strengthen the mind, as labor does the body. - Epictetus",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
