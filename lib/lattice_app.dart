import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lattice/UI/task_list_page.dart';
import 'package:lattice/domain/task_data.dart';
import 'package:lattice/state/task_provider.dart';
import 'package:provider/provider.dart';

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
        '/task_detail': (context) =>
            Consumer<TaskProvider>(
              builder: (context, provider, child) {

                return TaskDetail(task: provider.tasks[0],);
              },
            ),
        '/task_list': (context) => TaskListPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.laBelleAuroreTextTheme(
          Theme
              .of(context)
              .textTheme,
        ),
      ),
      home: const Homepage(),
    );
  }
}
