part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetElectronicsProductsEvent extends ProductEvent{}
class GetJeweleryProductsEvent extends ProductEvent{}
class GetMenClothingEvent extends ProductEvent{}
class GetWomenClothingEvent extends ProductEvent{}
