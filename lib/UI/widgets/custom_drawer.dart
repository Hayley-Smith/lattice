import 'package:flutter/material.dart';
import 'package:lattice/UI/widgets/weather_card.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgwhite.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: WeatherCard(),
        ),
        ListTile(
          title: const Text(
            'Home',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
        ListTile(
          title: const Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
        ),
        ListTile(
          title: const Text(
            'Task List',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/task_list');
          },
        ),
        ListTile(
          title: const Text(
            'Gratitudes',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/gratitude_list');
          },
        ),
        ListTile(
          title: const Text(
            'Obstacles',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/obstacle_list');
          },
        ),
      ],
    ));
  }
}
