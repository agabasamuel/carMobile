import 'package:equatable/equatable.dart';
import '/models/product_model.dart';

class Cart extends Equatable {
  final List<Product> products;

  const Cart({this.products = const <Product>[]});

  Cart copyWith({List<Product>? products}) {
    return Cart(products: products ?? this.products);
  }

  void addProduct(Product product) {
    // Create a copy of the current list and add the new product
    final updatedProducts = List<Product>.from(products);
    updatedProducts.add(product);

    // Create a new Cart instance with the updated products
    final updatedCart = copyWith(products: updatedProducts);

    // Replace the existing cart with the updated one using your preferred state management approach
    // For example, if you're using Bloc:
    // context.read<CartBloc>().add(UpdateCart(updatedCart));
  }

  @override
  List<Object?> get props => [products];

  Map productQuantity(products) {
    var quantity = Map();

    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });

    return quantity;
  }

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 900.0) {
      return 0.0;
    } else
      return 500.0;
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 900.0) {
      return 'You have Free Delivery';
    } else {
      double missing = 900.0 - subtotal;
      return 'Add \UGX${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);
}

// import 'package:equatable/equatable.dart';
// import '/models/product_model.dart';

// class Cart extends Equatable {
//   final List<Product> products;

//   Cart({List<Product>? initialProducts})
//       : products = initialProducts ?? const <Product>[];

//   Cart copyWith({List<Product>? products}) {
//     return Cart(initialProducts: products ?? this.products);
//   }

//   Cart addProduct(Product product) {
//     // Create a copy of the current list and add the new product
//     final updatedProducts = List<Product>.from(products);
//     updatedProducts.add(product);

//     // Create a new Cart instance with the updated products
//     final updatedCart = copyWith(products: updatedProducts);

//     return updatedCart;
//   }

//   @override
//   List<Object?> get props => [products];

//   Map productQuantity(List<Product> products) {
//     var quantity = Map<Product, int>();

//     products.forEach((product) {
//       if (!quantity.containsKey(product)) {
//         quantity[product] = 1;
//       } else {
//         quantity[product] = quantity[product]! + 1;
//       }
//     });

//     return quantity;
//   }

//   double get subtotal =>
//       products.fold(0, (total, current) => total + current.price);

//   double deliveryFee(double subtotal) {
//     if (subtotal >= 900.0) {
//       return 0.0;
//     } else {
//       return 500.0;
//     }
//   }

//   String freeDelivery(double subtotal) {
//     if (subtotal >= 900.0) {
//       return 'You have Free Delivery';
//     } else {
//       double missing = 900.0 - subtotal;
//       return 'Add \UGX${missing.toStringAsFixed(2)} for FREE Delivery';
//     }
//   }

//   double total(double subtotal, double deliveryFee) {
//     return subtotal + deliveryFee;
//   }

//   String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

//   String get subtotalString => subtotal.toStringAsFixed(2);

//   String get totalString =>
//       total(subtotal, deliveryFee(subtotal)).toStringAsFixed(2);

//   String get freeDeliveryString => freeDelivery(subtotal);
// }
