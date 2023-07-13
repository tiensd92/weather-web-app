import 'package:json_annotation/json_annotation.dart';

import 'condition_model.dart';

part 'current_model.g.dart';

@JsonSerializable()
class CurrentModel {
  @JsonKey(name: 'condition')
  final ConditionModel condition;

  @JsonKey(name: 'temp_c')
  final double tempC;

  @JsonKey(name: 'wind_kph')
  final double windKph;

  @JsonKey(name: 'humidity')
  final double humidity;

  CurrentModel({
    required this.condition,
    required this.tempC,
    required this.windKph,
    required this.humidity,
  });

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentModelToJson(this);
}
