import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lattice/UI/create_gratitude_page.dart';
import 'package:lattice/UI/task_list_page.dart';
import 'package:lattice/domain/task_data.dart';
import 'package:lattice/edit_task_page.dart';
import 'package:lattice/state/task_provider.dart';
import 'package:provider/provider.dart';

import 'UI/create_obstacle_page.dart';
import 'UI/dashboard.dart';
import 'UI/gratitudes_list_page.dart';
import 'UI/homepage.dart';
import 'UI/obstacle_list_page.dart';
import 'UI/task_detail.dart';
import 'UI/widgets/homepage_body.dart';
import 'create_task_page.dart';

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
        '/home': (context) => const Homepage(),
        '/dashboard': (context) => const DashboardBody(),
        '/task_detail': (context) =>
            Consumer<TaskProvider>(
              builder: (context, provider, child) {

                return TaskDetail(task: provider.tasks[0],);
              },
            ),
        '/task_list': (context) => const TaskListPage(),
        '/gratitude_list': (context) => const GratitudeListPage(),
        '/obstacle_list': (context) => const ObstacleListPage(),
        '/create_gratitude': (context) => const CreateGratitudePage(),
        '/create_obstacle': (context) => CreateObstaclePage(),
        '/create_task': (context) =>  CreateTaskPage(),

      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        textTheme: GoogleFonts.bacasimeAntiqueTextTheme(
          Theme
              .of(context)
              .textTheme,
        ),
      ),
      home: const Homepage(),
    );
  }
}
