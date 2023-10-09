import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_case/use_case.dart';
import '../../data/repositories/repository.dart';
import '../entities/weather_entity.dart';
import '../repositories/repository.dart';

final getWeatherUseCaseProvider =
    Provider((ref) => GetWeatherUseCase(ref.watch(weatherRepositoryProvider)));

class GetWeatherUseCase implements UseCase<WeatherEntity, String> {
  final WeatherRepository repository;

  GetWeatherUseCase(this.repository);

  @override
  Future<Either<Failure, WeatherEntity>> call(String place) async {
    return await repository.getWeather(place);
  }
}
