import 'dart:convert';
import 'package:bk_flutter_bloc/features/data/models/foods.dart';
import 'package:http/http.dart' as http;

class FoodsApiProvider {
  Future<List<Foods>>  getFoods() async {
    final response = await http.get(Uri.parse('https://raw.githubusercontent.com/MakS2711/json/main/foods.json'));

    if (response.statusCode == 200) {
      final List<dynamic> foodsJson = json.decode(response.body);
      return foodsJson.map((json) => Foods.fromJson(json)).toList();
    }
    else {
      throw Exception('Error fetching foods');
    }
  }
}
