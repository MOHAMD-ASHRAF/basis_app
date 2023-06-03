

import 'package:basis_app/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

abstract class BaseProductRepository {
  Future<Either<Failure,List<Product>>> geProductsByCategory(String category);
}
