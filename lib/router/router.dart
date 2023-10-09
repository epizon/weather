import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/search_weather/domain/entities/weather_entity.dart';
import '../features/search_weather/presentation/search_weather_results_screen.dart';
import '../features/search_weather/presentation/search_weather_screen.dart';
import 'route_location.dart';
import 'route_name.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(
      path: RouteLocation.root,
      name: RouteName.root,
      pageBuilder: (ctx, state) {
        return const NoTransitionPage(
          child: SearchWeatherScreen(),
        );
      },
    ),
    GoRoute(
      path: RouteLocation.weather,
      name: RouteName.weather,
      pageBuilder: (ctx, state) {
        final extra =
            (state.extra != null) ? state.extra as WeatherEntity : null;
        return NoTransitionPage(
          child: SearchWeatherResultsScreen(weatherEntity: extra),
        );
      },
    ),
  ]);
});
