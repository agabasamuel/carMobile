import 'package:car_spare/models/category_model.dart';
import 'package:car_spare/models/product_model.dart';
import 'package:car_spare/widgets/widgets.dart';
import 'package:car_spare/wishlist_page.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  final Category category;
  const CatalogPage({required this.category});
  // const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Catalog'),
        title: Text(category.name),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return WishlistPage();
                  },
                ),
              );
            },
            child: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 16.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: categoryProducts[index],
              widthFactor: 2.2,
            ),
            // child: ProductCard.catalog(
            //   product: categoryProducts[index],
            // ),
          );
        },
      ),
    );
  }
}
