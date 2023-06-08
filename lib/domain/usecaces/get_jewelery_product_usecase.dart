import 'package:basis_app/core/error/failure.dart';
import 'package:basis_app/core/usecase/base_usecase.dart';
import 'package:basis_app/domain/entities/product.dart';

import 'package:basis_app/domain/repository/base_product_repository.dart';
import 'package:dartz/dartz.dart';



class GetJeweleryProductsUseCase extends BaseUseCase<List<Product>, String>{
  final BaseProductRepository baseProductRepository;
  GetJeweleryProductsUseCase(this.baseProductRepository);

  @override
  Future<Either<Failure, List<Product>>> call(String parameters) async{
    return await baseProductRepository.getJeweleryProduct(parameters);
  }

}