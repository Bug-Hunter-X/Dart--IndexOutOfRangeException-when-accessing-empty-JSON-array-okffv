```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing the first element - potential error if the list is empty
      final firstElement = jsonData[0];
      print('First element: $firstElement');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle exception properly: rethrow, log, display error message
  }
}
```