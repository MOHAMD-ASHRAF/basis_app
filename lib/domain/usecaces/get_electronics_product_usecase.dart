import 'package:basis_app/core/usecase/base_usecase.dart';
import 'package:basis_app/domain/entities/product.dart';
import 'package:basis_app/domain/repository/base_product_repository.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';

class GetElectronicsProductsUseCase extends BaseUseCase<List<Product>, String>{
  final BaseProductRepository baseProductRepository;

  GetElectronicsProductsUseCase(this.baseProductRepository);

  @override
  Future<Either<Failure, List<Product>>> call(String parameters) async{
  return await baseProductRepository.getElectronicProduct(parameters);
  }

}