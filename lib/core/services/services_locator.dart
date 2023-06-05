import 'package:basis_app/data/datasource/remote_datasource.dart';
import 'package:basis_app/data/repository/product_repository.dart';
import 'package:basis_app/domain/repository/base_product_repository.dart';
import 'package:basis_app/domain/usecaces/get_electronics_product_usecase.dart';
import 'package:basis_app/domain/usecaces/get_jewelery_product_usecase.dart';
import 'package:basis_app/presentation/controller/product_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// bloc
    sl.registerFactory(() => ProductBloc(sl(),sl()));

    ///Use Case
    sl.registerLazySingleton(() => GetElectronicsProductsUseCase(sl()));
    sl.registerLazySingleton(() => GetJeweleryProductsUseCase(sl()));

    ///Repository
    sl.registerLazySingleton<BaseProductRepository>(
        () => ProductRepository(sl()));

    ///Data Source
    sl.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
  }
}
