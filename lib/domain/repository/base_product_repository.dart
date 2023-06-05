

import 'package:basis_app/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

abstract class BaseProductRepository {
  Future<Either<Failure,List<Product>>> getElectronicProduct(String category);
  Future<Either<Failure,List<Product>>> getJeweleryProduct(String category);
  Future<Either<Failure,List<Product>>> getMenClothing(String category);
}
