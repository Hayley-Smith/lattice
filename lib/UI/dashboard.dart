import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/custom_drawer.dart';
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
  int crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text(
          "Keep your mind in the middle",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
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
              const Expanded(
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
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                      ),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: FoodTile(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: WaterTile(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: GratitudeTile(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ObstacleTile(),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/create_task");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
