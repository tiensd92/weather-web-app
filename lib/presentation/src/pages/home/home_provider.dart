import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/data/data.dart';

class HomeProvider extends ChangeNotifier {
  late final WeatherNetWork weatherNetWork = WeatherNetWork();
  CurrentModel? weatherCurrent;
  LocationModel? location;

  HomeProvider() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchCurrentWeather();
    });
  }

  Future<void> fetchCurrentWeather() async {
    final response = await weatherNetWork.weather.fetchCurrent(
      body: FormData.fromMap({
        'key': 'c3a799a4b9d2498d8b233253231307',
        'q': 'auto:ip',
      }),
    );
    weatherCurrent = response.current;
    location = response.location;
    notifyListeners();
  }
}
