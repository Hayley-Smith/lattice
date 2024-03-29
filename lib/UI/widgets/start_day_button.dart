import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../state/day_provider.dart';

class StartDayButton extends StatelessWidget {
  const StartDayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DayProvider>(
      builder: (context, provider, child) {
        String text = "Start day";
        if (provider.isDayStarted()) {

          text =  "Go to Dashboard";

        }

        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/dashboard');
            provider.startDay();
          },
          child: Card(
            elevation: 10,
            shadowColor: Colors.black87,
            color: Theme.of(context).cardColor,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Text(
                     text,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
