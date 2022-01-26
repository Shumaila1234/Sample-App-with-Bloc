import 'dart:async';
import 'dart:convert';
import 'package:bloc_app/data/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  final String _baseUrl = "https://fakestoreapi.com/products";

  Future<List<ProductModel>> getProduct() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;

      return data.map((product) {
        return ProductModel(
            id: product['id'],
            title: product['title'],
            urlImage: product["image"],
            price: product["price"].toString(),
            category: product["category"],
            rateCount: product['rating']['rate'].toString());
      }).toList();
    } else {
      throw Exception("Failed to load joke");
    }
  }
}
