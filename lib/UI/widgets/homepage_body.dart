import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/start_day_button.dart';
import 'package:lattice/UI/widgets/weather_card.dart';

import 'date_card.dart';
import 'note_from_yesterday.dart';

class HomepageBody extends StatelessWidget {
  const HomepageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StartDayButton(),
        DateCard(),
        WeatherCard(),
        NoteFromYesterdayCard(),
      ],
    );
  }
}
