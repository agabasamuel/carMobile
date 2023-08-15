import 'package:car_spare/checkout_page.dart';
import 'package:car_spare/home_page.dart';
import 'package:car_spare/models/cart_model.dart';
import 'package:car_spare/models/product_model.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

import '/blocs/blocs.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

import '/blocs/blocs.dart';
import '/widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Cart'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //upper part of cart screen
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      Cart().freeDeliveryString,
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: Cart().products.length,
                    itemBuilder: (context, index) {
                      return CartProductCard(
                        product: Cart().products[index],
                      );
                    },
                  ),
                ),
              ],
            ),
            // CartProductCard in a ListView.builder
            ListView.builder(
              shrinkWrap: true,
              itemCount: Cart().products.length,
              itemBuilder: (context, index) {
                return CartProductCard(
                  product: Cart().products[index],
                );
              },
            ),
            //lower part of cart scereen
            Column(
              children: [
                Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            '\UGX ${Cart().subtotalString}',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Fee',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            '\UGX ${Cart().deliveryFeeString}',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.black.withAlpha(50)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.all(5.0),
                            height: 50,
                            decoration: BoxDecoration(color: Colors.black),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'TOTAL',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(color: Colors.white),
                                ),
                                Text(
                                  '\UGX ${Cart().totalString}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const CheckoutPage();
                              },
                            ),
                          );
                        },
                        child: Column(children: [
                          Icon(Icons.shopping_cart_checkout_outlined),
                          Text('Go to Checkout'),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
