import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchMeals(List<String> dietaryNeeds) async {
  var response = await http.get(
    Uri.parse('http://your-api-url/api/meals/suggest?dietaryNeeds=$dietaryNeeds'),
  );

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load meals');
  }
}
