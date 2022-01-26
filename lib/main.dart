import 'package:bloc_app/data/repositories/food_repository.dart';
import 'package:bloc_app/data/repositories/product_repository.dart';
import 'package:bloc_app/presentation/product/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: (....),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => ProductRepository(),
          ),
          RepositoryProvider(
            create: (context) => FoodRepository(),
          )
        ],
        child: const ProductScreen(),
      ),
    );
  }
}
