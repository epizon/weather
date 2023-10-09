import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_entity.freezed.dart';

@freezed
class WeatherEntity with _$WeatherEntity {
  const factory WeatherEntity({
    @Default([]) List<ResultEntity> results,
  }) = _WeatherEntity;
}

@freezed
class ResultEntity with _$ResultEntity {
  const factory ResultEntity({
    String? name,
    double? latitude,
    double? longitude,
    String? timezone,
    int? population,
    String? country,
  }) = _ResultEntity;
}
