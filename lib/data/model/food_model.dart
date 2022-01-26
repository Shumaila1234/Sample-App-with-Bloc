import 'package:equatable/equatable.dart';

class FoodModel {
  FoodModel({
    required this.title,
    required this.id,
    required this.urlImage,
  });

  String title;
  int id;
  String urlImage;

  factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        id: json["id"],
        title: json["price"],
        urlImage: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": urlImage,
      };
}
