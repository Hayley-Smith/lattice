import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../domain/day_data.dart';
import '../../state/day_provider.dart';


class FoodTile extends StatefulWidget {
  const FoodTile({Key? key}) : super(key: key);

  @override
  _FoodTileState createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {
  bool _isMealTime = false;
  String _nextMeal = '';
  late DateTime _nextMealTime;

  @override
  void initState() {
    super.initState();
    _calculateNextMeal();
  }

  void _calculateNextMeal() {
    DateTime now = DateTime.now();
    Day? currentDay = Provider.of<DayProvider>(context, listen: false).currentDay;

    DateTime? morningTeaTime = currentDay!.start.add(Duration(hours: 2));
    DateTime breakfastTime = currentDay!.start.add(Duration(hours: 4));
    DateTime lunchTime = currentDay!.start.add(Duration(hours: 7));
    DateTime afternoonTeaTime = currentDay!.start.add(Duration(hours: 10));

    if (now.isBefore(morningTeaTime)) {
      _nextMeal = 'Morning Tea';
      _nextMealTime = morningTeaTime;
    } else if (now.isBefore(breakfastTime)) {
      _nextMeal = 'Breakfast';
      _nextMealTime = breakfastTime;
    } else if (now.isBefore(lunchTime)) {
      _nextMeal = 'Lunch';
      _nextMealTime = lunchTime;
    } else if (now.isBefore(afternoonTeaTime)) {
      _nextMeal = 'Afternoon Tea';
      _nextMealTime = afternoonTeaTime;
    } else {
      // If all meals have passed for the day, set the next meal to tomorrow's morning tea
      _nextMeal = 'Morning Tea';
      _nextMealTime = currentDay.start.add(const Duration(days: 1, hours: 2));
    }

    // Calculate time until next meal
    Duration timeUntilNextMeal = _nextMealTime.difference(now);
    int minutesUntilNextMeal = timeUntilNextMeal.inMinutes;

    // Update meal time status
    if (minutesUntilNextMeal <= 0) {
      _isMealTime = true;
    } else {
      _isMealTime = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isMealTime = false;
        });
      },
      child: Card(
        color: _isMealTime ? Theme.of(context).cardColor : Theme.of(context).cardColor.withOpacity(0.2),
        child: Center(
          child: Text(
            _isMealTime ? "It's $_nextMeal Time!" : "$_nextMeal in ${_nextMealTime.difference(DateTime.now()).inMinutes} minutes",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
