import 'package:flutter/material.dart';

class OnDeckCard extends StatelessWidget {
  const OnDeckCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // Navigator.pushNamed(context, '/task_detail');
      },
      child: Opacity(opacity: .7,
        child: Card(
          elevation: 10,
          shadowColor: Colors.black87,
          color: Theme.of(context).cardColor,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .08,
            width: MediaQuery.of(context).size.width * .8,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Load Dishwasher",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
