import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/router/route_name.dart';

import '../../../core/constants/app_strings.dart';
import 'search_weather_state_notifier.dart';
import 'widgets/failure_widget.dart';
import 'widgets/loading_widget.dart';
import 'widgets/search_form_widget.dart';

class SearchWeatherScreen extends ConsumerWidget {
  const SearchWeatherScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _scaffold(context, ref);
  }

  _scaffold(BuildContext context, ref) {
    final searchWeatherState = ref.watch(searchWeatherStateNotifierProvider);
    final stateNotifier = ref.read(searchWeatherStateNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.kAppName),
      ),
      body: searchWeatherState.when(
          initial: () => Column(children: [
                SearchFormWidget(
                    onSearch: (query) => stateNotifier.getWeather(query)),
              ]),
          loading: () => const LoadingWidget(),
          success: (weatherEntity) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.pushNamed(RouteName.weather, extra: weatherEntity);
              stateNotifier.setInitialState();
            });
            return Container();
          },
          failure: () => const FailureWidget()),
    );
  }
}
