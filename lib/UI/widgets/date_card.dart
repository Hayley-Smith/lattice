import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // Get today's date
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMMM d, y').format(now);

    return InkWell(
      child: Card(
        elevation: 10,
        shadowColor: Colors.black87,
        color: Theme.of(context).cardColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .75,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Today is $formattedDate",style: Theme.of(context).textTheme.headlineMedium,),
            ),
          ),
        ),
      ),
    );
  }
}
