import 'package:flutter/material.dart';

import '../../domain/entities/weather_entity.dart';

class WeatherListItemWidget extends StatelessWidget {
  final ResultEntity? resultEntity;

  const WeatherListItemWidget({required this.resultEntity, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.cloud),
        title: Text(resultEntity?.name ?? ''),
        subtitle: Text(resultEntity?.country ?? ''),
        trailing: Text(resultEntity?.timezone ?? ''),
      ),
    );
  }
}
