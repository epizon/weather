import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/weather_entity.dart';

part 'search_weather_state.freezed.dart';

@freezed
class SearchWeatherState with _$SearchWeatherState {
  const SearchWeatherState._();

  const factory SearchWeatherState.initial() = _Initial;

  const factory SearchWeatherState.loading() = _Loading;

  const factory SearchWeatherState.success(
    WeatherEntity weatherEntity,
  ) = _Success;

  const factory SearchWeatherState.failure() = _Failure;
}
