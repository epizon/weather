import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/network/network_client.dart';
import '../dto/weather_dto.dart';

final remoteDataSourceProvider = Provider(
    (ref) => RemoteDataSourceImpl(client: ref.watch(networkClientProvider)));

abstract class RemoteDataSource {
  Future<WeatherDto> getWeather(String gmsProductId);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  late final NetworkClient client;

  RemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<WeatherDto> getWeather(String place) async {
    final response = await client.get(Uri.parse("$kSearchEndpoint$place"));
    if (response.statusCode == 200) {
      final weatherDto = weatherDtoFromMap(response.body);
      return weatherDto;
    } else {
      throw ServerException();
    }
  }
}
