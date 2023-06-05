part of 'product_bloc.dart';

 class ProductState extends Equatable {
  final List<Product> electronicsProducts;
  final RequestState electronicsProductsState;
  final String messageElectronic;
  final List<Product> jeweleryProducts;
  final RequestState jeweleryProductsState;
  final String messageJewelery;
  const ProductState(
      {this.electronicsProducts = const [],
      this.electronicsProductsState = RequestState.loading,
         this.messageElectronic = '',
        this.jeweleryProducts= const [],
        this.jeweleryProductsState = RequestState.loading,
        this.messageJewelery = '',
      });

  ProductState copyWith({
     List<Product>? electronicsProducts,
     RequestState? electronicsProductsState,
     String? messageElectronic,
     List<Product>? jeweleryProducts,
     RequestState? jeweleryProductsState,
     String? messageJewelery,
 }){
    return ProductState(
      electronicsProducts: electronicsProducts ?? this.electronicsProducts,
      electronicsProductsState:  electronicsProductsState ?? this.electronicsProductsState,
      messageElectronic:  messageElectronic ?? this.messageElectronic,
      jeweleryProducts: jeweleryProducts ?? this.jeweleryProducts,
      jeweleryProductsState: jeweleryProductsState ?? this.jeweleryProductsState,
      messageJewelery: messageJewelery ?? this.messageJewelery,

    );
  }

  @override
  List<Object> get props => [
    jeweleryProducts,
    jeweleryProductsState,
        electronicsProducts,
        electronicsProductsState,
    messageElectronic,
  messageJewelery
      ];
}
