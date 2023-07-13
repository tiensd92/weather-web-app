import 'package:json_annotation/json_annotation.dart';

import '../current_model.dart';
import '../location_model.dart';

part 'current_weather_response.g.dart';

@JsonSerializable()
class CurrentWeatherResponse {
  @JsonKey(name: 'location')
  final LocationModel location;

  @JsonKey(name: 'current')
  final CurrentModel current;

  CurrentWeatherResponse({
    required this.current,
    required this.location,
  });

  factory CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherResponseToJson(this);
}
