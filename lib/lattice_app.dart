import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        cardColor: const Color.fromRGBO(
          231,
          163,
          174,
          1,
        ),
        textTheme: GoogleFonts.laBelleAuroreTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const Homepage(),
    );
  }
}
