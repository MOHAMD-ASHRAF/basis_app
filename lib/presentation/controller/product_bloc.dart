import 'dart:async';

import 'package:basis_app/core/utils/enums.dart';

import 'package:basis_app/domain/entities/product.dart';

import 'package:basis_app/domain/usecaces/get_electronics_product_usecase.dart';
import 'package:basis_app/domain/usecaces/get_jewelery_product_usecase.dart';
import 'package:basis_app/domain/usecaces/get_men_clothing_product_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';

part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetElectronicsProductsUseCase getElectronicsProductsUseCase;
  final GetJeweleryProductsUseCase jeweleryProductsUseCase;
  final GetMenClothingUseCase getMenClothingUseCase;

  ProductBloc(
    this.getElectronicsProductsUseCase,
    this.jeweleryProductsUseCase,
    this.getMenClothingUseCase,
  ) : super(const ProductState()) {
    on<GetElectronicsProductsEvent>(_getElctronicProducts);

    on<GetJeweleryProductsEvent>(_getJeweleryProducts);

    on<GetMenClothingEvent>(_getMenClothingProducts);
  }

  FutureOr<void> _getElctronicProducts(
      GetElectronicsProductsEvent event, Emitter<ProductState> emit) async {
    final result = await getElectronicsProductsUseCase.execute('electronics');
    result.fold(
        (l) => emit(state.copyWith(
            electronicsProductsState: RequestState.error,
            messageElectronic: l.message)),
        (r) => emit(state.copyWith(
            electronicsProducts: r,
            electronicsProductsState: RequestState.loaded)));
  }

  FutureOr<void> _getJeweleryProducts(
      GetJeweleryProductsEvent event, Emitter<ProductState> emit) async {
    final result = await jeweleryProductsUseCase.execute('jewelery');
    result.fold(
        (l) => emit(state.copyWith(
            jeweleryProductsState: RequestState.error,
            messageJewelery: l.message)),
        (r) => emit(state.copyWith(
            jeweleryProducts: r, jeweleryProductsState: RequestState.loaded)));
  }

  FutureOr<void> _getMenClothingProducts(
      GetMenClothingEvent event, Emitter<ProductState> emit) async {
    final result = await getMenClothingUseCase.execute('men\'s clothing');
    result.fold(
        (l) => emit(state.copyWith(
            menClothingProductsState: RequestState.error,
            messageJewelery: l.message)),
        (r) => emit(state.copyWith(
            menClothingProducts: r,
            menClothingProductsState: RequestState.loaded)));
  }
}
