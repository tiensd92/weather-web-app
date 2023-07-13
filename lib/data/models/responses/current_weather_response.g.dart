// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    CurrentWeatherResponse(
      current: CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentWeatherResponseToJson(
        CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
