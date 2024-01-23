import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/date_card.dart';
import 'package:lattice/UI/widgets/food_tile.dart';
import 'package:lattice/UI/widgets/gratitude_tile.dart';
import 'package:lattice/UI/widgets/in_the_hole.dart';
import 'package:lattice/UI/widgets/obstacle_tile.dart';
import 'package:lattice/UI/widgets/on_deck_card.dart';
import 'package:lattice/UI/widgets/up_next.dart';
import 'package:lattice/UI/widgets/water_tile.dart';

class DashboardBody extends StatefulWidget {
  const DashboardBody({super.key});

  @override
  State<DashboardBody> createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
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
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    UpNextCard(),
                    OnDeckCard(),
                    InTheHoleCard(),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FoodTile(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: WaterTile(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GratitudeTile(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ObstacleTile(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
