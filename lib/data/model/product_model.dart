import 'package:equatable/equatable.dart';

class ProductModel {
  ProductModel(
      {required this.title,
      required this.id,
      required this.urlImage,
      required this.price,
      required this.category,
      required this.rateCount});

  String title;
  int id;
  String urlImage;
  String price;
  String category;
  String rateCount;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json["id"],
      title: json["price"],
      urlImage: json["image"],
      price: json["price"],
      category: json["category"],
      rateCount: json["rate"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": urlImage,
        "price": price,
        "category": category,
        "rate": rateCount
      };
}
