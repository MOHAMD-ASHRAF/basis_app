import 'package:basis_app/domain/entities/product.dart';

class ProductModel extends Product {
  const ProductModel(
      {required super.id,
      required super.title,
      required super.price,
      required super.description,
      required super.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      image: json['image']);
}
