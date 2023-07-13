import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/models.dart';

part 'weather_service.g.dart';

@RestApi()
abstract class WeatherService {
  factory WeatherService(Dio dio, {String baseUrl}) = _WeatherService;

  @POST('/v1/current.json')
  Future<CurrentWeatherResponse> fetchCurrent({
    @Body() required FormData body,
  });
}
