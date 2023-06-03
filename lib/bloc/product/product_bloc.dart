//
// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/cupertino.dart';
//
// part 'product_event.dart';
// part 'product_state.dart';
//
// class ProductBloc extends Bloc<ProductEvent, ProductState> {
//   final Api _api;
//   ProductBloc(this._api) : super(ProductLoadingState()) {
//     on<LoadProductEvent>((event, emit) async{
//       emit(ProductLoadingState());
//       try{
//         final products = await _api.get();
//         emit(ProductSuccessState(products));
//       }catch (e){
//         emit(ProductErrorState(e.toString()));
//       }
//
//     });
//   }
// }
//

