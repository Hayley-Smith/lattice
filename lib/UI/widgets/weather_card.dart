import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:provider/provider.dart';

import '../../state/weather_provider.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({
    super.key,
  });

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {



  @override
  Widget build(BuildContext context) {

    Provider.of<WeatherProvider>(context, listen: false)
      .getWeatherData();
    if (kDebugMode) {
      print("get weather data");
    }


    return InkWell(
      child: Card(
        elevation: 10,
        shadowColor: Colors.black87,
        color: Theme.of(context).cardColor,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .75,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<WeatherProvider>(
                builder: (context, weatherProvider, _) => Text(
                  weatherProvider.weatherData,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
