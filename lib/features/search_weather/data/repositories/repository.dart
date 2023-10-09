import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/weather_entity.dart';
import '../../domain/repositories/repository.dart';
import '../data_sources/remote_data_source.dart';
import '../dto/weather_dto.dart';

final weatherRepositoryProvider = Provider((ref) => WeatherRepositoryImpl(
    remoteDataSource: ref.watch(remoteDataSourceProvider)));

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;

  WeatherRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, WeatherEntity>> getWeather(String place) async {
    try {
      final weatherDto = await remoteDataSource.getWeather(place);
      return Right(weatherDto.toDomain);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
