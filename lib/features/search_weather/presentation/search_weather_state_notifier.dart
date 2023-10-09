import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entities/weather_entity.dart';
import 'controllers/weather_controller.dart';
import 'state/search_weather_state.dart';

final searchWeatherStateNotifierProvider = StateNotifierProvider.autoDispose<
    SearchWeatherStateNotifier, SearchWeatherState>((ref) {
  return SearchWeatherStateNotifier(
    ref.watch(weatherControllerProvider),
  );
});

class SearchWeatherStateNotifier extends StateNotifier<SearchWeatherState> {
  final WeatherController weatherController;

  SearchWeatherStateNotifier(this.weatherController)
      : super(const SearchWeatherState.initial());

  void getWeather(String place) async {
    state = const SearchWeatherState.loading();
    final result = await weatherController.getWeather(place);
    if (result is WeatherEntity) {
      state = SearchWeatherState.success(result);
    } else {
      state = const SearchWeatherState.failure();
    }
  }

  void setInitialState() => state = const SearchWeatherState.initial();
}
