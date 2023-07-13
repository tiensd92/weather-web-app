import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'region')
  final String region;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'lat')
  final double lat;

  @JsonKey(name: 'lon')
  final double lon;

  @JsonKey(name: 'tz_id')
  final String tzId;

  @JsonKey(name: 'localtime_epoch')
  final int localtimeEpoch;

  @JsonKey(name: 'localtime')
  final String localTime;

  LocationModel({
    required this.name,
    required this.country,
    required this.lat,
    required this.lon,
    required this.localTime,
    required this.localtimeEpoch,
    required this.region,
    required this.tzId,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
