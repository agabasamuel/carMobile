import 'package:car_spare/catalog_page.dart';
import 'package:car_spare/models/category_model.dart';
import 'package:car_spare/models/model.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'widgets/product_card.dart';
import 'widgets/product_carousel.dart';

import 'package:car_spare/screens/screens.dart';
import 'config/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories =
        Category.categories; // Use the categories from the Category class

    final List<Widget> imageSliders = categories.map((category) {
      return InkWell(
        onTap: () {
          // Navigator.pushNamed(context, '/catalog', arguments: category);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return CatalogPage(
                  category: category,
                );
              },
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(category.imageUrl,
                    fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      category.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }).toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                // viewportFraction: 0.9,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                initialPage: 2,
                autoPlay: true,
              ),
              items: imageSliders,
            ),
          ),
          //RECOMMENDED SECTION
          Text(
            'RECOMMENDED',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          //product card
          // ProductCard(
          //   product: Product.products[0],
          // ),
          //Product Carousel
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),

          //POPULAR SECTION
          Text(
            'MOST POPULAR',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          //product card
          // ProductCard(
          //   product: Product.products[0],
          // ),
          //Product Carousel
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
