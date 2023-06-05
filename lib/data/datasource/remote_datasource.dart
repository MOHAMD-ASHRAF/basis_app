
import 'package:basis_app/core/api_const.dart';
import 'package:basis_app/core/error/Exception.dart';
import 'package:basis_app/data/model/product_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<List<ProductModel>> getElectronicsProducts(String category);
  Future<List<ProductModel>> getJeweleryProducts(String category);
}
class RemoteDataSource extends BaseRemoteDataSource {
  @override
  Future<List<ProductModel>> getElectronicsProducts(String category) async {
    final response =
        await Dio().get('${AppConstance.getProductByCategory}$category');

    if (response.statusCode == 200) {
      return List<ProductModel>.from(
          (response.data as List).map((e) => ProductModel.fromJson(e)));
    }else{
      throw ServerException(message: 'something error');
    }
  }

  @override
  Future<List<ProductModel>> getJeweleryProducts(String category) async{
    final response =
        await Dio().get('${AppConstance.getProductByCategory}$category');

    if (response.statusCode == 200) {
      return List<ProductModel>.from(
          (response.data as List).map((e) => ProductModel.fromJson(e)));
    }else{
      throw ServerException(message: 'something error');
    }
  }
}
