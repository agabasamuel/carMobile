import 'package:flutter/material.dart';

import 'widgets/product_card.dart';
import 'package:car_spare/models/product_model.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 16.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2.2,
        ),
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              // child: ProductCard(
              //   product: Product.products[index],
              //   widthFactor: 1.1,
              //   leftPosition: 40,
              //   isWishlist: true,
              // ),
              // child: ProductCard.catalog(
              //   product: categoryProducts[index],
              // ),
              );
        },
      ),
    );
  }
}
