import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/date_card.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key});

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
          child: Card(
            color: Theme.of(context).cardColor,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .90,
              width: MediaQuery.of(context).size.width * .90,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Walk the dogs",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      "No notes.",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const Divider(color: Colors.black87,),
                    OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Completed",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Circle Back",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Skip for Today",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
