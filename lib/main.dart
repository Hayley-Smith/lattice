import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lattice/state/day_provider.dart';
import 'package:lattice/state/gratitude_provider.dart';
import 'package:lattice/state/obstacle_provider.dart';
import 'package:lattice/state/task_provider.dart';
import 'package:lattice/state/weather_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'lattice_app.dart';

//Lattice - A repeating arrangement of points

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WeatherProvider(),

        ),ChangeNotifierProvider(
          create: (context) => DayProvider(),

        ),
        ChangeNotifierProvider(
          create: (context) => TaskProvider(),

        ), ChangeNotifierProvider(
          create: (context) => GratitudeProvider(),

        ), ChangeNotifierProvider(
          create: (context) => ObstacleProvider(),

        ),
      ],
      child: const LatticeApp(),
    ),
  );
}
