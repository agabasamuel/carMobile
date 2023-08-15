import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;

  final String name;

  final String category;

  final String imageUrl;

  final int price;

  final bool isRecommended;

  final bool isPopular;

  // final String? description;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
    // this.description,
  });

  @override
  List<Object> get props => [
        id,
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
        // description,
      ];

  static List<Product> products = [
    Product(
      id: '1',
      name: 'BMW',
      category: 'Car headlights',
      imageUrl:
          'https://images.unsplash.com/photo-1516610540415-d1b25463c7f3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2FyJTIwaGVhZGxpZ2h0cyUyMGJtd3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 100000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      id: '2',
      name: 'Prius',
      category: 'Car headlights',
      imageUrl:
          'https://media.istockphoto.com/id/1308248587/photo/car-headlight-with-copy-space-macro-view-closeup-of-modern-prestigious-car-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=6YsIHLE7GNTrm-jEVgotBFjEKQ-9QYDz3ITd5lzKLE4=',
      price: 200000,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      id: '3',
      name: 'Tesla',
      category: 'Car headlights',
      imageUrl:
          'https://images.unsplash.com/photo-1515569067071-ec3b51335dd0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FyJTIwaGVhZGxpZ2h0cyUyMHRveW90YXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 100000,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      id: '4',
      name: 'toyota',
      category: 'Car headlights',
      imageUrl:
          'https://images.unsplash.com/photo-1622214587562-64704ac3bee0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y2FyJTIwaGVhZGxpZ2h0cyUyMHRveW90YXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 299000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      id: '5',
      name: 'Audi',
      category: 'Car headlights',
      imageUrl:
          'https://images.unsplash.com/photo-1581328136701-d3b67a31af35?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyJTIwaGVhZGxpZ2h0cyUyMHRveW90YXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 100000,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      id: '6',
      name: 'Pirelli',
      category: 'Car tires',
      imageUrl:
          'https://images.unsplash.com/photo-1582258514015-1be36bef6e19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cGlyZWxsaXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 500000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      id: '7',
      name: 'Pirelli f2',
      category: 'Car tires',
      imageUrl:
          'https://images.unsplash.com/photo-1568644310089-8fce475968a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBpcmVsbGl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60',
      price: 1232000,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      id: '8',
      name: 'Pirelli f1',
      category: 'Car Tires',
      imageUrl:
          'https://images.unsplash.com/photo-1642342178278-9f868ae919d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBpcmVsbGl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60', //https://unsplash.com/photos/5LIInaqRp5s
      price: 2990000,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      id: '9',
      name: 'run flats',
      category: 'Car Tires',
      imageUrl:
          'https://images.unsplash.com/photo-1640135187151-c232342afedc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHBpcmVsbGl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60',
      price: 1000000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      id: '10',
      name: 'Yokohama',
      category: 'Car Tires',
      imageUrl:
          'https://media.istockphoto.com/id/1308248587/photo/car-headlight-with-copy-space-macro-view-closeup-of-modern-prestigious-car-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=6YsIHLE7GNTrm-jEVgotBFjEKQ-9QYDz3ITd5lzKLE4=',
      price: 2777887,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      id: '11',
      name: 'Yokohama tires',
      category: 'Car Tires',
      imageUrl:
          'https://images.unsplash.com/photo-1603811439018-877d48550849?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8eW9rb2hhbWElMjB0aXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=700&q=60',
      price: 299,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      id: '12',
      name: 'halogen bulb',
      category: 'Car headlights',
      imageUrl:
          'https://media.istockphoto.com/id/1308248587/photo/car-headlight-with-copy-space-macro-view-closeup-of-modern-prestigious-car-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=6YsIHLE7GNTrm-jEVgotBFjEKQ-9QYDz3ITd5lzKLE4=',
      price: 99000,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      id: '13',
      name: 'benz',
      category: 'Car headlights',
      imageUrl:
          'https://images.unsplash.com/photo-1645534733992-6efacf90788e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2FyJTIwYnVsYnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 29900,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      id: '14',
      name: 'ford',
      category: 'Car headlights',
      imageUrl:
          'https://images.unsplash.com/photo-1645534703253-07f84afc28f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8Y2FyJTIwYnVsYnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60',
      price: 29900,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      id: '15',
      name: 'ferari',
      category: 'Car spoilers',
      imageUrl:
          'https://media.istockphoto.com/id/818407488/photo/one-car-spoiler.webp?b=1&s=170667a&w=0&k=20&c=nmlBMkLPhCeVL0Mf4uR3Va1AVjM7ZTzShHiMylCKgYw=',
      price: 59900,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      id: '16',
      name: 'porche',
      category: 'Car spoilers',
      imageUrl:
          'https://media.istockphoto.com/id/484020736/photo/car-spoiler.webp?b=1&s=170667a&w=0&k=20&c=mllfXNSUz6mUKtnc7_f8iGHScxqtmfN87GOHYKmbxv8=',
      price: 5900,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      id: '17',
      name: 'subaru',
      category: 'Car spoilers',
      imageUrl:
          'https://media.istockphoto.com/id/166301746/photo/spoiler.webp?b=1&s=170667a&w=0&k=20&c=BB_PUoiXOREDslIk4bG27O-MFD6nh9clQ3cC7rlUvqI=',
      price: 6900,
      isRecommended: true,
      isPopular: false,
    ),
  ];

  get description => null;
}
