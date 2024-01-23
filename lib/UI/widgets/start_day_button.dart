import 'package:flutter/material.dart';

class StartDayButton extends StatelessWidget {
  const StartDayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 10,
        shadowColor: Colors.black87,
        color: Theme.of(context).cardColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width * .9,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Start Day",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
