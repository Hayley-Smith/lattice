import 'package:flutter/material.dart';

import 'UI/homepage.dart';

class LatticeApp extends StatefulWidget {
  const LatticeApp({super.key});

  @override
  State<LatticeApp> createState() => _LatticeAppState();
}

class _LatticeAppState extends State<LatticeApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Homepage(),);
  }
}
