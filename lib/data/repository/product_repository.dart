import 'package:basis_app/core/error/Exception.dart';
import 'package:basis_app/core/error/failure.dart';
import 'package:basis_app/data/datasource/remote_datasource.dart';
import 'package:basis_app/domain/entities/product.dart';
import 'package:basis_app/domain/repository/base_product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductRepository extends BaseProductRepository{

  final BaseRemoteDataSource baseRemoteDataSource;

  ProductRepository(this.baseRemoteDataSource);
  @override
  Future<Either<Failure,List<Product>>> getElectronicProduct(String category) async{
      final result =   await baseRemoteDataSource.getElectronicsProducts(category);
      try{
        return Right(result);
      }on ServerException catch(failure){
        return left(ServerFailure(failure.message));
      }
  }

  @override
  Future<Either<Failure, List<Product>>> getJeweleryProduct(String category) async {
    final result =   await baseRemoteDataSource.getJeweleryProducts(category);
    try{
      return Right(result);
    }on ServerException catch(failure){
      return left(ServerFailure(failure.message));
    }
  }
}