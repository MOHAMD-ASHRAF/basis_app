import 'package:basis_app/domain/entities/rating.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
 // final List<Rating> rating;

  const Product(
      {required this.id, required this.title, required this.price, required this.description, required this.image});

  @override
  List<Object> get props => [id, title, price, description, image,];

}
