// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) => CurrentModel(
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      tempC: (json['temp_c'] as num).toDouble(),
      windKph: (json['wind_kph'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentModelToJson(CurrentModel instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'temp_c': instance.tempC,
      'wind_kph': instance.windKph,
      'humidity': instance.humidity,
    };
