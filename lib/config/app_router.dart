import 'package:car_spare/models/category_model.dart';
import 'package:car_spare/models/product_model.dart';
// import 'package:car_spare/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import '/models/model.dart';
import '/screens/screens.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');
    switch (settings.name) {
      case '/':
      //   return HomeScreen.route();
      // case HomeScreen.routeName:
      //   return HomeScreen.route();
      // case SplashScreen.routeName:
      //   return SplashScreen.route();
      // case CartScreen.routeName:
      //   return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      // case WishlistScreen.routeName:
      //   return WishlistScreen.route();
      // case CheckoutScreen.routeName:
      //   return CheckoutScreen.route();
      // case OrderConfirmation.routeName:
      //   return OrderConfirmation.route();
      // case PaymentSelection.routeName:
      //   return PaymentSelection.route();
      // case ProfileScreen.routeName:
      //   return ProfileScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('hello'),
        ),
      ),
    );
  }
}
