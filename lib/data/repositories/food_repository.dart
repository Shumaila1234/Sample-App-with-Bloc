import 'dart:async';
import 'dart:convert';
import 'package:bloc_app/data/model/food_model.dart';
import 'package:http/http.dart' as http;

class FoodRepository {
  final String _baseUrl =
      "https://gist.githubusercontent.com/JohannesMilke/d53fbbe9a1b7e7ca2645db13b995dc6f/raw/eace0e20f86cdde3352b2d92f699b6e9dedd8c70/books.json";

  Future<List<FoodModel>> getFood() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;

      return data.map((food) {
        return FoodModel(
          id: food['id'],
          title: food['title'],
          urlImage: food["urlImage"],
        );
      }).toList();
    } else {
      throw Exception("Failed to load joke");
    }
  }
}
