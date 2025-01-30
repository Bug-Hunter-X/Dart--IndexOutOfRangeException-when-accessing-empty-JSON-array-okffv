```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);

      // Check if the array is empty
      if (jsonData.isNotEmpty) {
        final firstElement = jsonData[0];
        print('First element: $firstElement');
      } else {
        print('JSON array is empty');
        // Handle the case of an empty array appropriately. 
        // Perhaps provide a default value or display a message to the user.
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle exception properly: rethrow, log, display error message
  }
}
```