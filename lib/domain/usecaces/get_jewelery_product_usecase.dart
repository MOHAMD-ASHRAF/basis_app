import 'package:basis_app/domain/entities/product.dart';
import 'package:basis_app/domain/repository/base_product_repository.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

class GetJeweleryProductsUseCase{
  final BaseProductRepository repository;
  GetJeweleryProductsUseCase(this.repository);
  Future<Either<Failure,List<Product>>> execute(String category) async{
    return await repository.getJeweleryProduct(category);
  }
}