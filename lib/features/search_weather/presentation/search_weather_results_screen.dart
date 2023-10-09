import 'package:flutter/material.dart';
import 'package:weather/core/constants/app_strings.dart';

import '../domain/entities/weather_entity.dart';
import 'widgets/no_results_widget.dart';
import 'widgets/weather_list_widget.dart';

class SearchWeatherResultsScreen extends StatelessWidget {
  final WeatherEntity? weatherEntity;

  const SearchWeatherResultsScreen({required this.weatherEntity, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.kDetailsTitle),),
      body: weatherEntity == null || weatherEntity?.results.isEmpty == true
          ? const NoResultsWidget()
          : _weatherList(),
    );
  }

  _weatherList() => ListView.builder(
      itemCount: weatherEntity?.results.length,
      itemBuilder: (context, index) => WeatherListItemWidget(
            resultEntity: weatherEntity?.results[index],
          ));
}
