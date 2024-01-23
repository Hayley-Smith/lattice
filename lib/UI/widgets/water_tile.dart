import 'package:flutter/material.dart';

class WaterTile extends StatelessWidget {
  const WaterTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Center(
        child: Text(
          "It is time to drink water",
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
