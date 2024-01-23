import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Center(
        child: Text(
          "What did you have for breakfast?",
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
