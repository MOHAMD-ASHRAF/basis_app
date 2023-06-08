import 'package:basis_app/domain/entities/rating.dart';

class RatingModel extends Rating {
  const RatingModel({required super.rate, required super.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      RatingModel(rate: json['rate'], count: json['count']);
}
