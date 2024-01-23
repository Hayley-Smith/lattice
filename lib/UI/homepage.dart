import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/date_card.dart';
import 'package:lattice/UI/widgets/note_from_yesterday.dart';
import 'package:lattice/UI/widgets/start_day_button.dart';
import 'package:lattice/UI/widgets/weather_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/latticebackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StartDayButton(),
              DateCard(),
              WeatherCard(),
              NoteFromYesterdayCard(),
            ],
          ),
        ),
      ),
    );
  }
}
