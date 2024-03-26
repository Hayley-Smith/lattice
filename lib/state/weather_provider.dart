import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:lattice/config.dart' as config;

class WeatherProvider extends ChangeNotifier {
  String _weatherData = '';
  String apiKey = config.openWeatherApiKey;

  String get weatherData => _weatherData;

  Future<void> getWeatherData() async {
    String apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?zip=62269&appid=$apiKey&units=imperial';
    if (kDebugMode) {
      print(apiUrl);
    }
    var response = await http.get(Uri.parse(apiUrl));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      String description = data['weather'][0]['main'];
      double temperature = data['main']['temp'];

      _weatherData =
          '$description and $temperature°f';
    } else {
      _weatherData = 'Failed to fetch weather data';
    }

    // Notify listeners that the state has changed
    notifyListeners();
  }
}
