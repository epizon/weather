import 'package:flutter/material.dart';

class NoResultsWidget extends StatelessWidget {
  const NoResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No Results Found'));
  }
}
