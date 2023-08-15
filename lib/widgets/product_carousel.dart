import 'package:car_spare/models/product_model.dart';
import 'package:car_spare/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '/models/model.dart';

import 'product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: ProductCard(product: products[index]),
              // child: ProductCard.catalog(product: products[index]),
            );
          }),
    );
  }
}
