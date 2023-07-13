import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_app/data/data_sources/network/weather_service.dart';

class WeatherNetWork {
  final dio = Dio();

  late final WeatherService weather;

  WeatherNetWork() {
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
        ),
      );
    }

    weather = WeatherService(dio, baseUrl: 'https://api.weatherapi.com');
  }
}
