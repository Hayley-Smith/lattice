import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'UI/dashboard.dart';
import 'UI/homepage.dart';
import 'UI/task_detail.dart';
import 'UI/widgets/homepage_body.dart';

class LatticeApp extends StatefulWidget {
  const LatticeApp({super.key});

  @override
  State<LatticeApp> createState() => _LatticeAppState();
}

class _LatticeAppState extends State<LatticeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/home': (context) => Homepage(),
        '/dashboard': (context) => DashboardBody(),
        '/task_detail': (context) => TaskDetail(),
      },
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
