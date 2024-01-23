import 'package:flutter/material.dart';

class InTheHoleCard extends StatelessWidget {
  const InTheHoleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, '/task_detail');
      },
      child: Opacity(
        opacity: .5,
        child: Card(
          elevation: 10,
          shadowColor: Colors.black87,
          color: Theme.of(context).cardColor,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .06,
            width: MediaQuery.of(context).size.width * .7,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Take out trash",
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
