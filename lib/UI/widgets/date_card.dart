import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  const DateCard({
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
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * .75,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("{Today's Date}",style: Theme.of(context).textTheme.titleMedium,),
            ),
          ),
        ),
      ),
    );
  }
}
