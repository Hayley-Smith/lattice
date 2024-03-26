import 'dart:async';
import 'package:flutter/material.dart';

class WaterTile extends StatefulWidget {
  const WaterTile({Key? key}) : super(key: key);

  @override
  _WaterTileState createState() => _WaterTileState();
}

class _WaterTileState extends State<WaterTile> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _opacity = 0.2; // Set opacity to 20%
          Timer(const Duration(hours: 1), () {
            setState(() {
              _opacity = 1.0; // Revert opacity back to 100% after one hour
            });
          });
        });
      },
      child: Card(
        color: Theme.of(context).cardColor.withOpacity(_opacity),
        child: Center(
          child: Text(
            "Drink Water",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
