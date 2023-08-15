// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
      ];

  static List<Category> categories = [
    Category(
      name: 'Car headlights',
      imageUrl:
          'https://media.istockphoto.com/id/1308248587/photo/car-headlight-with-copy-space-macro-view-closeup-of-modern-prestigious-car-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=6YsIHLE7GNTrm-jEVgotBFjEKQ-9QYDz3ITd5lzKLE4=',
    ),
    Category(
      name: 'Car tires',
      imageUrl:
          'https://media.istockphoto.com/id/1415579368/photo/set-of-new-car-wheels-3d-render.webp?b=1&s=170667a&w=0&k=20&c=ebzKQghkWDcukbrg222blgsfMBHse8ou_JeXh0GRXos=',
    ),
    Category(
        name: 'Car spoilers',
        imageUrl:
            'https://media.istockphoto.com/id/818407488/photo/one-car-spoiler.webp?b=1&s=170667a&w=0&k=20&c=nmlBMkLPhCeVL0Mf4uR3Va1AVjM7ZTzShHiMylCKgYw='),
  ];

  // static fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> doc) {}
}
