import 'package:flutter/material.dart';

// This is the backend file: search_service.dart

class SearchService {
  // Searchable data
  final List<String> _allItems = [
    'Alley Palace',
    'Courdes Alpes',
    'Snow Adventures',
    'Luxurious Aspen',
    'Hotels',
    'Food',
    'white lagoon',
    'white velvet',
    'white restaurant',
    'luxurious pools',
    'mexican steak',
    'beef steak',
    'chinese'
  ];

  // Method to filter items based on query
  List<String> filterSearchResults(String query) {
    if (query.isEmpty) return []; // Return an empty list if the query is empty
    return _allItems
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  // Method to handle navigation or selection based on the selected item
  void handleSuggestionTap(String selectedItem, BuildContext context) {
    if (selectedItem == 'Alley Palace') {
      Navigator.pushNamed(context, '/house'); // Update with your route
    } else if (selectedItem == 'Courdes Alpes') {
      Navigator.pushNamed(context, '/courdes');
    } else if (selectedItem == 'Snow Adventures') {
      Navigator.pushNamed(context, '/snow');
    } else if (selectedItem == 'Luxurious Aspen') {
      Navigator.pushNamed(context, '/luxurious');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'No page available for $selectedItem',
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      );
    }
  }
}
