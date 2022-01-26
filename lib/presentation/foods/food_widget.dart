import 'package:bloc_app/data/model/food_model.dart';
import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  final FoodModel food;

  const FoodWidget({required this.food});

  @override
  Widget build(BuildContext context) {
    // var providerContext = context.read<MyModel>();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          // providerContext.productName = product.title;
        },
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              food.urlImage,
              fit: BoxFit.fill,
              width: 55,
              height: 85,
            ),
          ),
          title: Text(
            '${food.title}',
            style: const TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'montserrat',
            ),
          ),
          // isThreeLine: true,
          // subtitle: Text(post.id),
          dense: true,
        ),
      ),
    );
  }
}
