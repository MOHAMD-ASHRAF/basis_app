import 'package:basis_app/bloc/counter/counter_cubit.dart';
import 'package:basis_app/bloc_observer.dart';
import 'package:basis_app/core/color_const.dart';
import 'package:basis_app/data/datasource/remote_datasource.dart';
import 'package:basis_app/data/repository/product_repository.dart';
import 'package:basis_app/domain/entities/product.dart';
import 'package:basis_app/domain/repository/base_product_repository.dart';
import 'package:basis_app/domain/usecaces/get_product_by_category_usecase.dart';

import 'package:basis_app/presentation/pages/MyCartPage.dart';
import 'package:basis_app/presentation/pages/detiels_prodeuct_page.dart';
import 'package:basis_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  // BaseRemoteDataSource baseRemoteDataSource= RemoteDataSource();
  // BaseProductRepository baseProductRepository= ProductRepository(baseRemoteDataSource);
  //   Product product = await GetProductsByCategory(baseProductRepository).execute('men\'s clothing');
  //   print(product);
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        // BlocProvider(
        //   create: (context) => ProductBloc(RepositoryProvider.of<Api>(context))..add(LoadProductEvent()),
        // ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Almarai',
          primaryColor: kPrimaryColor,
        ),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => const HomePage(),
          DetailsProductPage.id: (context) => const DetailsProductPage(),
          MyCartPage.id: (context) => const MyCartPage(),
        },

      ),
    );
  }
}

