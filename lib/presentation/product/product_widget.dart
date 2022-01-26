import 'package:bloc_app/data/model/global.dart';
import 'package:bloc_app/data/model/product_model.dart';
import 'package:bloc_app/presentation/product/product_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel product;

  const ProductWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    // var providerContext = context.read<MyModel>();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          productName = product.title;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductProfile()));
        },
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlImage,
              fit: BoxFit.fill,
              width: 55,
              height: 85,
            ),
          ),
          subtitle:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'montserrat',
              ),
            ),
            Text('Price: ${product.price.toString()}',
                style: const TextStyle(fontSize: 15.0)),
            RatingBarIndicator(
                rating: double.parse(product.rateCount),
                itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                itemCount: 5,
                itemSize: 20.0,
                direction: Axis.horizontal),
          ]),
          // isThreeLine: true,
          // subtitle: Text(post.id),
          dense: true,
        ),
      ),
    );
  }
}
