import 'package:flutter/material.dart';
import 'package:weather/core/constants/app_strings.dart';

typedef OnSearch = Function(String query);

class SearchFormWidget extends StatefulWidget {
  final OnSearch onSearch;

  const SearchFormWidget({required this.onSearch, Key? key}) : super(key: key);

  @override
  State<SearchFormWidget> createState() => _SearchFormWidgetState();
}

class _SearchFormWidgetState extends State<SearchFormWidget> {
  final _searchFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchFieldController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.all(12),
                isDense: true,
                hintText: AppStrings.kSearchHint,
              ),
              onSubmitted: (text) => widget.onSearch(text.trim()),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () =>
                    widget.onSearch(_searchFieldController.text.trim()),
                child: const Text('Search'))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchFieldController.dispose();
    super.dispose();
  }
}
