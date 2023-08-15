// import 'package:car_spare/models/product_model.dart';
// import 'package:flutter/material.dart';

// class CartProductCard extends StatelessWidget {
//   final Product product;

//   const CartProductCard({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Row(children: [
//         SizedBox(width: 5),
//         Image.network(
//           product.imageUrl,
//           width: 100,
//           height: 80,
//           fit: BoxFit.cover,
//         ),
//         SizedBox(width: 10),
//         Expanded(
//           child: Column(
//             children: [
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               Text(
//                 product.name,
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               Text(
//                 '\UGX ${product.price}',
//                 style: Theme.of(context).textTheme.titleSmall,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(width: 10),
//         Row(
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.remove_circle),
//             ),
//             Text(
//               '29999977',
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.add_circle),
//             ),
//           ],
//         )
//       ]),
//     );
//   }
// }

// CartProductCard
import 'package:flutter/material.dart';
import '/models/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;

  const CartProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          SizedBox(width: 5),
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  '\UGX ${product.price}',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_circle),
              ),
              Text(
                '1', // Change this to the actual quantity
                style: Theme.of(context).textTheme.subtitle1,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
