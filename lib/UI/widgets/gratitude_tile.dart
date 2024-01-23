import 'package:flutter/material.dart';

class GratitudeTile extends StatelessWidget {
  const GratitudeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "He is a wise man who does not grieve for the things which he has not, but rejoices for those which he has. - Epictetus",
            style: Theme.of(context).textTheme.bodyLarge,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
