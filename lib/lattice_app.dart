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
    return MaterialApp(
      theme: ThemeData(cardColor: const Color.fromRGBO(231, 163, 174, 1)),
      home: const Homepage(),
    );
  }
}
