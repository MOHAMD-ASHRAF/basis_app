part of 'product_bloc.dart';

class ProductState extends Equatable {
  final List<Product> electronicsProducts;
  final RequestState electronicsProductsState;
  final String messageElectronic;

  final List<Product> menClothingProducts;
  final RequestState menClothingProductsState;
  final String messageMenClothing;

  final List<Product> jeweleryProducts;
  final RequestState jeweleryProductsState;
  final String messageJewelery;

  const ProductState({
    this.menClothingProducts = const [],
    this.menClothingProductsState = RequestState.loading,
    this.messageMenClothing = '',
    this.electronicsProducts = const [],
    this.electronicsProductsState = RequestState.loading,
    this.messageElectronic = '',
    this.jeweleryProducts = const [],
    this.jeweleryProductsState = RequestState.loading,
    this.messageJewelery = '',
  });

  ProductState copyWith({
    List<Product>? menClothingProducts,
    RequestState? menClothingProductsState,
    String? messageMenClothing,
    List<Product>? electronicsProducts,
    RequestState? electronicsProductsState,
    String? messageElectronic,
    List<Product>? jeweleryProducts,
    RequestState? jeweleryProductsState,
    String? messageJewelery,
  }) {
    return ProductState(
      electronicsProducts: electronicsProducts ?? this.electronicsProducts,
      electronicsProductsState:
          electronicsProductsState ?? this.electronicsProductsState,
      messageElectronic: messageElectronic ?? this.messageElectronic,
      jeweleryProducts: jeweleryProducts ?? this.jeweleryProducts,
      jeweleryProductsState:
          jeweleryProductsState ?? this.jeweleryProductsState,
      messageJewelery: messageJewelery ?? this.messageJewelery,
      menClothingProducts: menClothingProducts ?? this.menClothingProducts,
      menClothingProductsState:
          menClothingProductsState ?? this.menClothingProductsState,
      messageMenClothing: messageMenClothing ?? this.messageMenClothing,
    );
  }

  @override
  List<Object> get props => [
        jeweleryProducts,
        jeweleryProductsState,
        electronicsProducts,
        electronicsProductsState,
        messageElectronic,
        messageJewelery,
        menClothingProducts,
        menClothingProductsState,
        messageMenClothing,
      ];
}
