import 'package:flutter/material.dart';

class NoteFromYesterdayCard extends StatelessWidget {
  const NoteFromYesterdayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 10,
        shadowColor: Colors.black87,
        color: Theme.of(context).cardColor,
        child: SizedBox(
          // height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .75,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Note: 4 days until Pauls Party",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
