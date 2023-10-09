import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../domain/entities/weather_entity.dart';

part 'weather_dto.freezed.dart';

part 'weather_dto.g.dart';

WeatherDto weatherDtoFromMap(String str) =>
    WeatherDto.fromJson(json.decode(str));

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    List<Result>? results,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

extension WeatherDtoExt on WeatherDto {
  WeatherEntity get toDomain => WeatherEntity(
      results: results == null ? [] : results!.map((e) => e.toDomain).toList());
}

@freezed
class Result with _$Result {
  const factory Result({
    String? name,
    double? latitude,
    double? longitude,
    String? timezone,
    int? population,
    String? country,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

extension ResultExt on Result {
  ResultEntity get toDomain => ResultEntity(
      name: name,
      latitude: latitude,
      longitude: longitude,
      timezone: timezone,
      population: population,
      country: country);
}
