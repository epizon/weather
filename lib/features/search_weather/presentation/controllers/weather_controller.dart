import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/use_cases/get_weather_use_case.dart';

final weatherControllerProvider = Provider((ref) =>
    WeatherController(getWeatherUseCase: ref.watch(getWeatherUseCaseProvider)));

class WeatherController {
  final GetWeatherUseCase getWeatherUseCase;

  WeatherController({required this.getWeatherUseCase});

  getWeather(String place) async {
    final Either<Failure, WeatherEntity> failureOrWeatherResult =
        await getWeatherUseCase(place);
    return failureOrWeatherResult.fold(
      (failure) => failure,
      (searchResult) => searchResult,
    );
  }
}
