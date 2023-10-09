// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDtoImpl _$$WeatherDtoImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDtoImpl(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherDtoImplToJson(_$WeatherDtoImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      name: json['name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      population: json['population'] as int?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'population': instance.population,
      'country': instance.country,
    };
