import 'package:bloc_app/data/model/global.dart';
import 'package:flutter/material.dart';

class ProductProfile extends StatelessWidget {
  const ProductProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [const Text("Product name: "), Text(productName)],
      ),
    );
  }
}
